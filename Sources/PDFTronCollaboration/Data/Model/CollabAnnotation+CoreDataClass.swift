//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------
//

import Foundation
import CoreData

// Subclass to prevent the entity from being public
class CollabAnnotation: NSManagedObject {
    override class func entity() -> NSEntityDescription {
        let description = NSEntityDescription()
        description.name = "CollabAnnotation"
        description.managedObjectClassName = "CollabAnnotation"
        return description
    }
}
