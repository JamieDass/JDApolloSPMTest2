//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import CoreData
import Tools

class PDFTronCollaborationCoreDataManager {
    let persistentContainer: NSPersistentContainer
    
    init() {
        let modelName = "PDFTronCollaborationAnnotationModel"

        guard let modelURL = Bundle(for: type(of: self)).url(forResource: modelName, withExtension:"momd") else {
                fatalError("Error loading model from bundle")
        }

        guard let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("Error initializing managed object model from: \(modelURL)")
        }

        self.persistentContainer = NSPersistentContainer(name: modelName, managedObjectModel: managedObjectModel)
        self.initalizeStack()
    }

    var context: NSManagedObjectContext {
        return self.persistentContainer.viewContext
    }

    func initalizeStack() {
        self.persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                print("Could not load store: \(error.localizedDescription)")
                return
            }
        }
    }

    func addAnnotation(annotationID: String, serverID: String, documentID: String, pageNumber: Int32) throws
    {
        // swift keypath
        let request = CollabAnnotation.fetchRequest()
        request.predicate = NSPredicate(format: "annotationID == %@ AND pageNumber == %i", annotationID, pageNumber)
        let annotations = try self.context.fetch(request)
        if annotations.count > 0 {
            // annotation is already stored locally
            return
        }
        let annotation = CollabAnnotation(context: self.context)
        annotation.annotationID = annotationID
        annotation.serverID = serverID
        annotation.documentID = documentID
        annotation.pageNumber = pageNumber
        try self.context.save()
    }

    func fetchServerID(forAnnotationID annotationID: String, documentID: String, onPageNumber pageNumber:Int32) throws -> String? {
        let request = CollabAnnotation.fetchRequest()
        request.predicate = NSPredicate(format: "annotationID == %@ AND documentID == %@ AND pageNumber == %i", annotationID, documentID, pageNumber)
        let annotations = try self.context.fetch(request)
        guard let annotation = annotations.first,
              let serverID = annotation.serverID else {return nil}
        return serverID
    }
    
    func fetchPageNumber(forAnnotationID annotationID: String, documentID: String) throws -> Int32? {
        let request = CollabAnnotation.fetchRequest()
        request.predicate = NSPredicate(format: "annotationID == %@ AND documentID == %@", annotationID, documentID)
        let annotations = try self.context.fetch(request)
        guard let annotation = annotations.first else {return nil}
        return annotation.pageNumber
    }
    
    func updatePageNumberForAnnotation(withAnnotationID annotationID: String, serverID: String, documentID: String, newPageNumber pageNumber:Int32) throws {
        let request = CollabAnnotation.fetchRequest()
        request.predicate = NSPredicate(format: "annotationID == %@ AND serverID == %@ AND documentID == %@", annotationID, serverID, documentID)
        let annotations = try self.context.fetch(request)
        guard let annotation = annotations.first else {return}
        if annotation.pageNumber == pageNumber {
            // page number does not need to be updated
            return
        }
        annotation.pageNumber = pageNumber
        try self.context.save()
    }

    func deleteAnnotation(withAnnotationID annotationID: String, documentID: String, onPageNumber pageNumber:Int32) throws {
        let fetchRequest = CollabAnnotation.fetchRequest() as NSFetchRequest<NSFetchRequestResult>
        fetchRequest.predicate = NSPredicate(format: "annotationID == %@ AND documentID == %@ AND pageNumber == %i", annotationID, documentID, pageNumber)
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        try self.context.execute(deleteRequest)
        try self.context.save()
    }

    func removeAllAnnotationsFromLocalStore() throws
    {
        let fetchRequest = CollabAnnotation.fetchRequest() as NSFetchRequest<NSFetchRequestResult>
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        try self.context.execute(deleteRequest)
        try self.context.save()
    }
}
