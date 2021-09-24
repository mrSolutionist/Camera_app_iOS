//
//  StudentEntity+CoreDataProperties.swift
//  CameraApp2
//
//  Created by Robin George on 24/09/21.
//
//

import Foundation
import CoreData


extension StudentEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StudentEntity> {
        return NSFetchRequest<StudentEntity>(entityName: "StudentEntity")
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var username: String?

}

extension StudentEntity : Identifiable {

}
