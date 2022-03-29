//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Apollo

/// A class representing a single document. Instances of this class can be used to view a document, invite users etc.
@objc public class Document: NSObject {

    public var id: String
    public var name: String?
    public var createdAt: Date
    public var updatedAt: Date
    public var isPublic: Bool
    public var author: User
    var annotations: [Annotation]?
    public var members: [User] = [User]()
    weak var pdftronClient: CollabClient?

    internal override required init()
    {
        self.id = ""
        self.author = User()
        self.createdAt = Date()
        self.updatedAt = Date()
        self.isPublic = true
        self.members = [User]()
        super.init()
    }

    internal required init(id:String, name:String?, author: User, createdAt:Date, updatedAt:Date, isPublic:Bool = false) {
        self.id = id
        self.name = name
        self.author = author
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.isPublic = isPublic
    }

    internal init(id:String, name:String?, author:User) {
        self.id = id
        self.name = name
        self.author = author
        self.createdAt = Date()
        self.updatedAt = Date()
        self.isPublic = true
        self.members = [User]()
    }
}

// MARK: Properties
@objc public extension Document
{
    /// Determines if the current user is a member of the document
    ///
    /// - Returns: Whether the current user is a member of the document.
    func isMember() -> Bool
    {
        guard let pdftronClient = pdftronClient,
              let currentUser = pdftronClient.user else {
            return false
        }
        return self.members.contains(currentUser)
    }

    /// Determines if the current user is the author of the document
    ///
    /// - Returns: Whether the current user is the author of the document.
    func isAuthor() -> Bool
    {
        guard let pdftronClient = pdftronClient,
              let currentUser = pdftronClient.user else {
            return false
        }
        return author == currentUser
    }

    /// Determines if the current user can join the document
    ///
    /// - Returns: Whether the current user can join the document.
    func canJoin() -> Bool
    {
        return !self.isMember() && self.isPublic
    }
}

// MARK: Actions
@objc public extension Document
{
    /// Adds the current user to the document.
    ///
    /// - Parameters:
    ///   - completion: The completion handler for the join operation. A closure called with a Bool: true on success or false if the join operation is not allowed.
    func join(completion: @escaping (Bool) -> ())
    {
        guard let pdftronClient = pdftronClient,
              let currentUser = pdftronClient.user,
              !isMember(),
              isPublic
        else {
            completion(false)
            return
        }
        inviteUsers([currentUser]) { joined in
            if (joined) {
                self.members.append(currentUser)
            }
            completion(joined)
        }
    }

    /// Leaves the current document.
    func leave()
    {
        guard let pdftronClient = pdftronClient,
              let currentUser = pdftronClient.user else {return}
        leave(user: currentUser)
    }

    /// View the current document. This connects the current user to the document allowing them to view and make changes.
    func view()
    {
        guard let pdftronClient = pdftronClient,
              let currentUser = pdftronClient.user
        else {return}
        view(user: currentUser)
        documentLoaded()
    }
}

// MARK: Internal Methods
private extension Document
{
    func inviteUsers(_ users: [User], completion: @escaping (Bool) -> ())
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
                  completion(false)
            return
        }
        documentManager.inviteUsersToDocument(users: users, document: self, collabClient: pdftronClient) { result in
            completion(result)
        }
    }

    func leave(user: User)
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
            return
        }
        documentManager.removeUserFromDocument(user: user, document: self, collabClient: pdftronClient)
    }

    func view(user: User)
    {
        guard let pdftronClient = pdftronClient,
              let documentManager = pdftronClient.documentManager else {
            return
        }
        documentManager.loadDocument(document: self, user: user, collabClient: pdftronClient)
    }

    func documentLoaded()
    {
        guard let pdftronClient = pdftronClient else { return }
        pdftronClient.documentLoadedWithID(id: self.id, initialAnnotations: self.annotations)
    }
}
