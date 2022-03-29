//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import CoreData
import Tools

protocol AnnotationManagerDelegate
{
    func annotationManagerErrorOccurred(error:Error)
}

class AnnotationManager
{
    var delegate: AnnotationManagerDelegate?

    var coreDataManager: PDFTronCollaborationCoreDataManager?

    required init(with coreDataManager: PDFTronCollaborationCoreDataManager) {
        self.coreDataManager = coreDataManager
    }

    func addAnnotationToLocalStore(annotation: Annotation)
    {
        guard let coreDataManager = coreDataManager else {
            return
        }
        do {
            try coreDataManager.addAnnotation(annotationID: annotation.annotationID,
                                              serverID: annotation.id,
                                              documentID: annotation.documentID,
                                              pageNumber:Int32(annotation.pageNumber))
        } catch {
            self.delegate?.annotationManagerErrorOccurred(error: error)
        }
    }
    
    func updatePageNumberForAnnotationInLocalStore(annotation: Annotation)
    {
        guard let coreDataManager = coreDataManager else {
            return
        }
        do {
            try coreDataManager.updatePageNumberForAnnotation(withAnnotationID: annotation.annotationID,
                                                              serverID: annotation.id,
                                                              documentID: annotation.documentID,
                                                              newPageNumber: Int32(annotation.pageNumber))
        } catch {
            self.delegate?.annotationManagerErrorOccurred(error: error)
        }
    }
    
    func removeAnnotationFromLocalStore(annotation: Annotation)
    {
        guard let coreDataManager = coreDataManager else {
            return
        }
        do {
            try coreDataManager.deleteAnnotation(withAnnotationID: annotation.annotationID,
                                                 documentID: annotation.documentID,
                                                 onPageNumber: Int32(annotation.pageNumber))
        } catch {
            self.delegate?.annotationManagerErrorOccurred(error: error)
        }
    }
}
