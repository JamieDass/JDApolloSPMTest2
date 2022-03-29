//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Tools

/// A class representing a single annotation belonging to a `Document`.
@objc public class Annotation: NSObject
{
    /// The annotation's ID on the server.
    public var id: String
    /// The XFDF of the annotation.
    public var xfdf: String
    /// The annotation ID.
    public var annotationID: String
    /// The ID of the document with which the annotation is associated.
    public var documentID: String
    /// The ID of the annotation's author.
    public var authorID: String?
    var pageNumber: Int32

    internal required init(annotationID: String,
                id: String?,
                authorID: String? = nil,
                documentID: String,
                pageNumber: Int32,
                xfdf: String) {
        self.annotationID = annotationID
        self.id = id ?? ""
        self.authorID = authorID
        self.documentID = documentID
        self.pageNumber = pageNumber
        self.xfdf = xfdf
    }
    
    internal convenience init(collaborationAnnotation: PTCollaborationAnnotation, serverID: String?) {
        self.init(
            annotationID: collaborationAnnotation.annotationID ?? "",
            id: serverID ?? "",
            authorID: collaborationAnnotation.userID,
            documentID: collaborationAnnotation.documentID ?? "",
            pageNumber: PDFTronCollaborationUtils.pageNumberFromXFDF(xfdf: collaborationAnnotation.xfdf) ?? 0,
            xfdf: collaborationAnnotation.xfdf ?? "")
    }

    internal var collaborationAnnotation:PTCollaborationAnnotation {
        let collaborationAnnotation = PTCollaborationAnnotation()
        collaborationAnnotation.documentID = self.documentID
        collaborationAnnotation.annotationID = self.annotationID
        collaborationAnnotation.xfdf = self.xfdf
        if self.authorID != nil {
            collaborationAnnotation.userID = self.authorID
        }
        return collaborationAnnotation
    }
}
