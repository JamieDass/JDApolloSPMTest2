//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Tools
import Apollo
import ApolloWebSocket

/// The methods declared by the `CollabClientDelegate` protocol allow the adopting delegate to respond to messages from the `CollabClient` class.
@objc public protocol CollabClientDelegate
{
    @objc func collabClientErrorOccurred(error: Error)
}

/// The root level class that must be instantiated to enable realtime collaboration. The main purpose of this class is to log in a user.
@objc open class CollabClient: NSObject, PTCollaborationServerCommunication
{
    // MARK: PTCollaborationServerCommunication Properties
    /** The `PTBaseCollaborationManager` that registered this service implementation in
    * `PTBaseCollaborationManager.registerServerCommunicationComponent()`.
    */
    public var collaborationManager: PTBaseCollaborationManager?
    
    /// The unique ID that represents the current user.
    public var userID: String?

    /// The unique ID that represents the current document.
    public var documentID: String?

    // MARK: CollabClient Properties
    /// An object which conforms to the `CollabClientDelegate` protocol.
    @objc public var delegate: CollabClientDelegate?
    
    var authenticationManager: AuthenticationManager?
    
    var annotationManager: AnnotationManager?

    var documentManager: DocumentManager?

    var coreDataManager: PDFTronCollaborationCoreDataManager?

    /// The current user.
    public var user: User? {
        didSet {
            guard let user = self.user else {return}
            user.pdftronClient = self
            if let userID = user.id {
                self.userID = userID
            }
        }
    }

    var endpointURL: URL

    var subscriptionURL: URL
    
    var apolloClient: ApolloClient?

    var initialAnnotations: [PTCollaborationAnnotation]?

    private var annotationChangedSubscription: Cancellable?

    // MARK: Initializers
    /**
     * Initializes a newly-created `CollabClient` instance.
     *
     * - Parameters:
     *   - endpointURL: the endpoint URL of the server.
     *   - subscriptionURL: the subscription URL of the server.
     */
    @objc public init(endpointURL: URL, subscriptionURL: URL)
    {
        self.endpointURL = endpointURL
        self.subscriptionURL = subscriptionURL
        self.coreDataManager = PDFTronCollaborationCoreDataManager()

        super.init()

        configureCollabClient()
        configureApolloClient(endpointURL: endpointURL, subscriptionURL: subscriptionURL, authorizationToken: nil, completion: nil)
    }
    
    deinit {
        // Make sure the subscription is cancelled, if it exists, when this object is deallocated.
        if let annotationChangedSubscription = annotationChangedSubscription {
            annotationChangedSubscription.cancel()
        }
    }
    
    func configureCollabClient()
    {
        guard let coreDataManager = coreDataManager else {
            return
        }
        self.authenticationManager = AuthenticationManager()
        self.annotationManager = AnnotationManager(with: coreDataManager)
        self.documentManager = DocumentManager()
        guard let authenticationManager = authenticationManager,
              let annotationManager = annotationManager else {
                  return
              }
        authenticationManager.delegate = self
        annotationManager.delegate = self
    }

    // MARK: Convenience
    func configureApolloClient(endpointURL:URL, subscriptionURL: URL, authorizationToken:String?, completion: ((ApolloClient) -> Void)?){
        ApolloClientManager.configureApolloClient(endpointURL: endpointURL, subscriptionURL: subscriptionURL, authorizationToken: authorizationToken, completionHandler: {[weak self] client in
            guard let self = self else {return}
            self.apolloClient = client
            completion?(client)
        })
    }

    func addSubscriptionForServerEvents()
    {
        guard let apolloClient = apolloClient,
              let user = user,
              let userID = user.id  else {
                  return
              }
        self.annotationChangedSubscription = apolloClient.subscribe(subscription: OnAnnotationChangedSubscription(userId: userID, settings: nil), resultHandler: { [weak self] result in
            guard let self = self else {
              return
            }
            switch result {
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.processGraphQLError(error: error)
                    }
                    return
                }
                if let data = graphQLResult.data {
                    let annotationChanged = data.annotationChanged
                    let annotation = annotationChanged.annotation
                    let collabAnnot = PTCollaborationAnnotation()
                    collabAnnot.annotationID = annotation.annotationId
                    collabAnnot.documentID = annotation.documentId
                    collabAnnot.xfdf = annotation.xfdf
                    if let author = annotation.author {
                        collabAnnot.userID = author.id
                    }
                    switch annotationChanged.action {
                    case .add:
                        self.remoteAnnotationAdded(collabAnnot, withServerID: annotation.id)
                    case .edit:
                        self.remoteAnnotationModified(collabAnnot, withServerID: annotation.id)
                    case .delete:
                        self.remoteAnnotationRemoved(collabAnnot, withServerID: annotation.id)
                    default:
                        break
                    }
                }
            case .failure(let error):
                self.processGraphQLError(error: error)
            }
        })
    }

    func processGraphQLError(error:Error)
    {
        var userInfo = [String : Any]()
        let processedError = error as NSError

        if let graphQLError = error as? GraphQLError {
            userInfo[NSLocalizedDescriptionKey] = graphQLError.localizedDescription
            userInfo[NSLocalizedFailureReasonErrorKey] = graphQLError.failureReason
            userInfo[NSLocalizedRecoverySuggestionErrorKey] = graphQLError.recoverySuggestion
            userInfo[NSHelpAnchorErrorKey] = graphQLError.helpAnchor
        }

        self.delegate?.collabClientErrorOccurred(error: processedError)
    }
}

// MARK: PTCollaborationServerCommunication
extension CollabClient
{
    /**
     * This method is called by the local document viewer when it is ready for remote annotations.
     *
     * The implemention of this method should apply all remotely stored annotations to the local document.
     */
    public func documentLoaded() {
        guard let collaborationManager = collaborationManager,
              let initialAnnotations = initialAnnotations else { return }
        collaborationManager.loadInitialRemoteAnnotations(initialAnnotations)
    }

    // MARK: Local Annotation Events
    /**
     * The implementation of this method sends the local annotation change to the server.
     * This method is called by `PTBaseCollaborationManager`.
     *
     * - Parameters:
     *   - collaborationAnnotation: an object representing the collaboration annotation.
     */
    public func localAnnotationAdded(_ collaborationAnnotation: PTCollaborationAnnotation) {
        let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: nil)
        guard let apolloClient = apolloClient,
              let documentID = documentID,
              let user = user else {
                  return
              }
        let annotationInput = NewAnnotationInput(id: nil,
                                                 xfdf: annotation.xfdf,
                                                 annotContents: "",
                                                 mentionedUserIds: nil,
                                                 authorId: user.id,
                                                 annotationId: annotation.annotationID,
                                                 documentId: documentID,
                                                 pageNumber: Int(annotation.pageNumber),
                                                 inReplyTo: nil,
                                                 createdAt: "",
                                                 updatedAt: "")
        apolloClient.perform(mutation: AddAnnotationMutation(input: annotationInput)) {
            result in
            switch result {
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.processGraphQLError(error: error)
                    }
                    return
                }
            case .failure(let error):
                self.processGraphQLError(error: error)
            }
        }
    }

    /**
     * The implementation of this method sends the local annotation change to the server.
     * This method is called by `PTBaseCollaborationManager`.
     *
     * - Parameters:
     *   - collaborationAnnotation: an object representing the collaboration annotation.
     */
    public func localAnnotationModified(_ collaborationAnnotation: PTCollaborationAnnotation) {
        let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: nil)
        guard let apolloClient = apolloClient,
              let documentID = documentID else {
                  return
              }
        do {
            if let coreDataManager = self.coreDataManager,
               let serverID = try coreDataManager.fetchServerID(forAnnotationID: annotation.annotationID, documentID: documentID, onPageNumber: annotation.pageNumber) {
                annotation.id = serverID
                let editAnnotation = EditAnnotationInput(xfdf: collaborationAnnotation.xfdf,
                                                         annotContents: "",
                                                         pageNumber: Int(annotation.pageNumber),
                                                         mentionedUserIds: nil,
                                                         updatedAt: "")
                apolloClient.perform(mutation: EditAnnotationMutation(id: serverID,
                                                                      input: editAnnotation)) {
                    [weak self] result in
                    guard let self = self else {return}
                    switch result {
                    case .success(let graphQLResult):
                        if let errors = graphQLResult.errors,
                           errors.count > 0 {
                            for error in errors {
                                self.processGraphQLError(error: error)
                            }
                            return
                        }
                        print("Successfully modified annotation.")
                    case .failure(let error):
                        self.processGraphQLError(error: error)
                    }
                }
            }
        } catch {
            self.processGraphQLError(error: error)
        }
    }
    
    /**
     * The implementation of this method sends the local annotation change to the server.
     * This method is called by `PTBaseCollaborationManager`.
     *
     * - Parameters:
     *   - collaborationAnnotation: an object representing the collaboration annotation.
     */
    public func localAnnotationRemoved(_ collaborationAnnotation: PTCollaborationAnnotation) {
        guard let apolloClient = apolloClient,
              let documentID = documentID,
              let coreDataManager = self.coreDataManager,
              let annotationID = collaborationAnnotation.annotationID else {
                  return
              }
        do {
            if let pageNumber = try coreDataManager.fetchPageNumber(forAnnotationID: annotationID, documentID: documentID) {
                do {
                    if let serverID = try coreDataManager.fetchServerID(forAnnotationID: annotationID, documentID: documentID, onPageNumber: pageNumber) {
                        apolloClient.perform(mutation: DeleteAnnotationMutation(id: serverID)) { [weak self] result in
                            guard let self = self else {return}
                            switch result {
                            case .success(let graphQLResult):
                                if let errors = graphQLResult.errors,
                                   errors.count > 0 {
                                    for error in errors {
                                        self.processGraphQLError(error: error)
                                    }
                                    return
                                }
                                print("Successfully removed annotation.")
                            case .failure(let error):
                                self.processGraphQLError(error: error)
                            }
                        }
                    }
                } catch {
                    self.processGraphQLError(error: error)
                }
            }
        } catch {
            self.processGraphQLError(error: error)
        }
    }

    // MARK: Remote Annotation Events
    func remoteAnnotationAdded(_ collaborationAnnotation: PTCollaborationAnnotation, withServerID serverID:String)
    {
        guard let annotationManager = annotationManager else {
            return
        }
        let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: serverID)
        annotationManager.addAnnotationToLocalStore(annotation: annotation)
        remoteAnnotationAdded(collaborationAnnotation)
    }

    /**
     * Call this method to communicate a change that occured remotely that needs to be reflected on the device.
     *
     * - Parameters:
     *   - collaborationAnnotation an object representing the collaboration annotation.
     */
    public func remoteAnnotationAdded(_ collaborationAnnotation: PTCollaborationAnnotation)
    {
        guard let collaborationManager = collaborationManager else { return }
        collaborationManager.remoteAnnotationAdded(collaborationAnnotation)
    }

    func remoteAnnotationModified(_ collaborationAnnotation: PTCollaborationAnnotation, withServerID serverID:String)
    {
        guard let annotationManager = annotationManager else {
            return
        }
        let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: serverID)
        annotationManager.updatePageNumberForAnnotationInLocalStore(annotation: annotation)
        remoteAnnotationModified(collaborationAnnotation)
    }

    /**
     * Call this method to communicate a change that occured remotely that needs to be reflected on the device.
     *
     * - Parameters:
     *   - collaborationAnnotation an object representing the collaboration annotation.
     */
    public func remoteAnnotationModified(_ collaborationAnnotation: PTCollaborationAnnotation)
    {
        guard let collaborationManager = collaborationManager else { return }
        collaborationManager.remoteAnnotationModified(collaborationAnnotation)
    }

    public func remoteAnnotationRemoved(_ collaborationAnnotation: PTCollaborationAnnotation, withServerID serverID:String)
    {
        guard let annotationManager = annotationManager else {
            return
        }
        let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: serverID)
        annotationManager.removeAnnotationFromLocalStore(annotation: annotation)
        remoteAnnotationRemoved(collaborationAnnotation)
    }

    /**
     * Call this method to communicate a change that occured remotely that needs to be reflected on the device.
     *
     * - Parameters:
     *   - collaborationAnnotation an object representing the collaboration annotation.
     */
    public func remoteAnnotationRemoved(_ collaborationAnnotation: PTCollaborationAnnotation)
    {
        guard let collaborationManager = collaborationManager else { return }
        collaborationManager.remoteAnnotationRemoved(collaborationAnnotation)
    }
}

// MARK: Delegate Conformance
extension CollabClient: AuthenticationManagerDelegate
{
    func authenticationManagerErrorOccurred(error: Error) {
        self.processGraphQLError(error: error)
    }
}

// MARK: Document Loaded
extension CollabClient
{
    func documentLoadedWithID(id: String, initialAnnotations: [Annotation]?) {
        if let initialAnnotations = initialAnnotations {
            var collabAnnots = [PTCollaborationAnnotation]()
            for annotation in initialAnnotations {
                let collaborationAnnotation = annotation.collaborationAnnotation
                if !collaborationAnnotation.isValidForAdd {
                    continue
                }
                collabAnnots.append(collaborationAnnotation)
                if let annotationManager = annotationManager {
                    annotationManager.addAnnotationToLocalStore(annotation: annotation)
                }
            }
            self.initialAnnotations = collabAnnots
        }
        self.documentID = id
        self.documentLoaded()
    }
}

extension CollabClient: AnnotationManagerDelegate
{
    func annotationManagerErrorOccurred(error: Error) {
        self.processGraphQLError(error: error)
    }
}
