//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Apollo
import Tools

/// An enum representing the User's type.
@objc public enum UserType: Int {
    case standard, anonymous
}

/// A user class returned from the login methods on `CollabClient`. This class is used to create documents, fetch documents, etc.
@objc public class User: NSObject
{
    public var userName: String?
    public var id: String?
    public var email: String?
    public var type: UserType?
    weak var pdftronClient: CollabClient?

    internal override required init()
    {
        super.init()
    }

    public override func isEqual(_ object: Any?) -> Bool {
        return userName == (object as? User)?.userName &&
        id == (object as? User)?.id &&
        email == (object as? User)?.email
    }
}

// MARK: Authentication
@objc public extension User
{
    /// Logs out the current user.
    func logout()
    {
        guard let pdftronClient = pdftronClient,
              let apolloClient = pdftronClient.apolloClient,
              let userID = self.id,
              let currentDocumentID = pdftronClient.documentID
        else { return }
        let deleteConnectedDocUser = DeleteConnectedDocUserInput(documentId: currentDocumentID, userId: userID)
        apolloClient.perform(mutation: DeleteConnectedDocUserMutation(input: deleteConnectedDocUser)){ _ in
            // TODO: Process
        }
    }
}

// MARK: Document APIs
@objc public extension User
{
    /// Gets all documents for the current user.
    ///
    /// - Parameters:
    ///   - completionHandler: The completion handler. A closure which is called with an array of `Document` objects if they exist.
    func getAllDocuments(completionHandler: @escaping ([Document]?) -> ())
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
                  completionHandler(nil)
            return
        }
        documentManager.getAllDocumentsForUser(user: self, collabClient: pdftronClient) { documents in
            completionHandler(documents)
        }
    }

    /// Gets a document belonging to the current user.
    ///
    /// - Parameters:
    ///   - documentID: The ID of the document.
    ///   - completionHandler: The completion handler. A closure which is called with a `Document` object if it exists.
    func getDocument(documentID:String, completionHandler: @escaping (Document?) -> ())
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
                  completionHandler(nil)
            return
        }
        documentManager.getDocument(documentID: documentID, collabClient: pdftronClient) { document in
            completionHandler(document)
        }
    }
    
    /// Creates a document authored by the current user.
    ///
    /// - Parameters:
    ///   - documentID: The ID of the document.
    ///   - documentName: The ID of the document.
    ///   - isPublic: Whether the document should be public.
    ///   - annotations: An array of the document's annotations.
    ///   - completionHandler: The completion handler. A closure which is called with a `Document` object if it gets created.
    func createDocument(documentID:String, documentName:String, isPublic:Bool = true, annotations:[PTCollaborationAnnotation], completionHandler: @escaping (Document?) -> ())
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
                  completionHandler(nil)
            return
        }
        documentManager.createDocument(documentID: documentID, documentName: documentName, author: self, isPublic: isPublic, annotations: annotations, collabClient: pdftronClient) { document in
            completionHandler(document)
        }
    }
}
