//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Tools
import Apollo

class DocumentManager
{
    func loadDocument(document: Document, user: User, collabClient:CollabClient) {
        guard let apolloClient = collabClient.apolloClient,
              let userID = user.id else {
            return
        }
        apolloClient.perform(mutation: ConnectUserToDocumentMutation(documentId: document.id, userId: userID, pageNumber: nil)) { result in
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0{
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    return
                }
                if graphQLResult.data != nil {
                    // TODO: Process
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
            }
        }
    }

    func getAllDocumentsForUser(user:User, collabClient:CollabClient, completionHandler: @escaping ([Document]?) -> ())
    {
        guard let apolloClient = collabClient.apolloClient,
              let userID = user.id else {
                  completionHandler(nil)
            return
        }
        apolloClient.fetch(query: GetDocumentsFilteredQuery(userId: userID, limit: -1, before: nil, orderBy: nil, orderDirection: nil)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result {
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0{
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    var documents = [Document]()
                    for document in data.documents {
                        let doc = self.documentFromServerEntity(serverDocument: document, collabClient: collabClient)
                        documents.append(doc)
                    }
                    completionHandler(documents)
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
                completionHandler(nil)
            }
        }
    }

    func getDocument(documentID:String, collabClient: CollabClient, completionHandler: @escaping (Document?) -> ())
    {
        guard let apolloClient = collabClient.apolloClient else {
                  completionHandler(nil)
            return
        }
        apolloClient.fetch(query: GetDocumentByIdQueryQuery(id: documentID)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data,
                   let document = data.document {
                    let doc = self.documentFromServerEntity(serverDocument: document, collabClient: collabClient)
                    completionHandler(doc)
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
                completionHandler(nil)
            }
        }
    }

    func createDocument(documentID:String, documentName:String, author:User, isPublic:Bool = true, annotations:[PTCollaborationAnnotation], collabClient: CollabClient, completionHandler: @escaping (Document?) -> ())
    {
        guard let apolloClient = collabClient.apolloClient,
              let authorID = author.id else {
                  completionHandler(nil)
            return
        }
        let dateInt = Int(Date().timeIntervalSince1970)
        let dateString = String(dateInt)
        let doc = NewDocumentInput(id: documentID, name: documentName, authorId: authorID, isPublic: isPublic, updatedAt: dateString, createdAt: dateString)
        var newAnnotations = [NewAnnotationInput]()
        for collaborationAnnotation in annotations {
            let annotation = Annotation(collaborationAnnotation: collaborationAnnotation, serverID: nil)
            let annotationInput = NewAnnotationInput(id: nil,
                                                     xfdf: annotation.xfdf,
                                                     annotContents: "",
                                                     mentionedUserIds: nil,
                                                     authorId: annotation.authorID,
                                                     annotationId: annotation.annotationID,
                                                     documentId: documentID,
                                                     pageNumber: Int(annotation.pageNumber),
                                                     inReplyTo: nil,
                                                     createdAt: "",
                                                     updatedAt: "")
            newAnnotations.append(annotationInput)
        }
        apolloClient.perform(mutation: AddDocumentMutation(document: doc, annotations: newAnnotations)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result {
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0{
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    let document = data.addDocument
                    let doc = self.documentFromServerEntity(serverDocument: document, collabClient: collabClient)
                    completionHandler(doc)
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
                completionHandler(nil)
            }
        }
    }

    func inviteUsersToDocument(users: [User], document:Document, collabClient: CollabClient, completion: @escaping (Bool) -> ())
    {
        guard let apolloClient = collabClient.apolloClient else {
                  completion(false)
            return
        }
        var invitedUsers = [InvitedUserInput]()
        for user in users {
            let invitedUser = InvitedUserInput(id: user.id, userName: user.userName, email: user.email)
            invitedUsers.append(invitedUser)
        }
        apolloClient.perform(mutation: InviteUsersToDocumentMutation(id: document.id, usersInvited: invitedUsers)) { result in
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    completion(false)
                    return
                }
                guard graphQLResult.data != nil else {
                    completion(false)
                    return
                }
                completion(true)
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
                completion(false)
            }
        }
    }

    func connectUserToDocument(user: User, document:Document, collabClient: CollabClient)
    {
        guard let apolloClient = collabClient.apolloClient,
              let userID = user.id
        else {
            return
        }
        apolloClient.perform(mutation: ConnectUserToDocumentMutation(documentId: document.id, userId: userID, pageNumber: nil)) { result in
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0{
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    return
                }
                if graphQLResult.data != nil {
                    // TODO: Process
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
            }
        }
    }
    
    func removeUserFromDocument(user: User, document:Document, collabClient: CollabClient)
    {
        guard let apolloClient = collabClient.apolloClient,
              let userID = user.id
        else {
            return
        }
        let deleteDocumentMember = DeleteDocumentMemberInput(memberId: userID)
        apolloClient.perform(mutation: LeaveDocumentMutation(input: deleteDocumentMember)) { result in
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0{
                    for error in errors {
                        collabClient.processGraphQLError(error: error)
                    }
                    return
                }
                if graphQLResult.data != nil {
                    // TODO: Process
                }
            case .failure(let error):
                collabClient.processGraphQLError(error: error)
            }
        }
    }
}

extension DocumentManager
{
    // By ID
    func documentFromServerEntity(serverDocument: GetDocumentByIdQueryQuery.Data.Document, collabClient: CollabClient) -> Document
    {
        let author = userFromAuthor(author: serverDocument.author)
        let createdAtString = serverDocument.createdAt
        var createdAt = Date()
        if let dateDouble = Double(createdAtString){
            createdAt = Date(timeIntervalSince1970:dateDouble)
        }
        let updatedAtString = serverDocument.createdAt
        var updatedAt = Date()
        if let dateDouble = Double(updatedAtString){
            updatedAt = Date(timeIntervalSince1970:dateDouble)
        }
        var isPublic = false
        if let serverDocIsPublic = serverDocument.isPublic{
            isPublic = serverDocIsPublic
        }
        let document = Document(id: serverDocument.id, name: serverDocument.name, author: author, createdAt: createdAt, updatedAt: updatedAt, isPublic: isPublic)
        document.members = usersFromMembers(members: serverDocument.members)
        document.annotations = annotationsFromServerEntity(serverAnnotations: serverDocument.annotations)
        document.pdftronClient = collabClient
        return document
    }

    func userFromAuthor(author: GetDocumentByIdQueryQuery.Data.Document.Author) -> User
    {
        let user = User()
        user.userName = author.userName
        user.id = author.id
        user.type = author.type == .standard ? .standard : .anonymous
        user.email = author.email
        return user
    }

    func usersFromMembers(members: [GetDocumentByIdQueryQuery.Data.Document.Member]) -> [User]
    {
        var users = [User]()
        for member in members {
            let memberUser = member.user
            let user = User()
            user.userName = memberUser.userName
            user.id = memberUser.id
            user.email = memberUser.email
            users.append(user)
        }
        return users
    }
    
    func annotationsFromServerEntity(serverAnnotations: [GetDocumentByIdQueryQuery.Data.Document.Annotation]) -> [Annotation]
    {
        var annotations = [Annotation]()
        for serverAnnotation in serverAnnotations
        {
            let annotation = Annotation(annotationID: serverAnnotation.annotationId,
                                                            id: serverAnnotation.id,
                                                            authorID: serverAnnotation.author?.id, // optional
                                                            documentID: serverAnnotation.documentId,
                                                            pageNumber: Int32(serverAnnotation.pageNumber),
                                                            xfdf: serverAnnotation.xfdf)
            annotations.append(annotation)
        }
        return annotations
    }

    // Filtered
    func documentFromServerEntity(serverDocument: GetDocumentsFilteredQuery.Data.Document, collabClient: CollabClient) -> Document
    {
        let author = userFromAuthor(author: serverDocument.author)
        let createdAtString = serverDocument.createdAt
        var createdAt = Date()
        if let dateDouble = Double(createdAtString){
            createdAt = Date(timeIntervalSince1970:dateDouble)
        }
        let updatedAtString = serverDocument.createdAt
        var updatedAt = Date()
        if let dateDouble = Double(updatedAtString){
            updatedAt = Date(timeIntervalSince1970:dateDouble)
        }
        var isPublic = false
        if let serverDocIsPublic = serverDocument.isPublic{
            isPublic = serverDocIsPublic
        }
        let document = Document(id: serverDocument.id, name: serverDocument.name, author: author, createdAt: createdAt, updatedAt: updatedAt, isPublic: isPublic)
        document.pdftronClient = collabClient
        return document
    }

    func userFromAuthor(author: GetDocumentsFilteredQuery.Data.Document.Author) -> User
    {
        let user = User()
        user.userName = author.userName
        user.id = author.id
        user.type = author.type == .standard ? .standard : .anonymous
        user.email = author.email
        return user
    }

    // Add Document
    func documentFromServerEntity(serverDocument: AddDocumentMutation.Data.AddDocument, collabClient: CollabClient) -> Document
    {
        let author = userFromAuthor(author: serverDocument.author)
        let document = Document(id: serverDocument.id, name: serverDocument.name, author: author)
        document.pdftronClient = collabClient
        document.members = usersFromMembers(members: serverDocument.members)
        document.annotations = annotationsFromServerEntity(serverAnnotations: serverDocument.annotations)
        return document
    }

    func userFromAuthor(author: AddDocumentMutation.Data.AddDocument.Author) -> User
    {
        let user = User()
        user.userName = author.userName
        user.id = author.id
        user.type = author.type == .standard ? .standard : .anonymous
        user.email = author.email
        return user
    }
    
    func usersFromMembers(members: [AddDocumentMutation.Data.AddDocument.Member]) -> [User]
    {
        var users = [User]()
        for member in members {
            let memberUser = member.user
            let user = User()
            user.userName = memberUser.userName
            user.id = memberUser.id
            user.email = memberUser.email
            users.append(user)
        }
        return users
    }

    func annotationsFromServerEntity(serverAnnotations: [AddDocumentMutation.Data.AddDocument.Annotation]) -> [Annotation]
    {
        var annotations = [Annotation]()
        for serverAnnotation in serverAnnotations
        {
            let annotation = Annotation(annotationID: serverAnnotation.annotationId,
                                                            id: serverAnnotation.id,
                                                            authorID: serverAnnotation.author?.id, // optional
                                                            documentID: serverAnnotation.documentId,
                                                            pageNumber: Int32(serverAnnotation.pageNumber),
                                                            xfdf: serverAnnotation.xfdf)
            annotations.append(annotation)
        }
        return annotations
    }
}
