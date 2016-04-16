//
//  Animal+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Owen Pierce on 2/4/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Animal {

    @NSManaged var name: String
    @NSManaged var isCarniverous: NSNumber
    @NSManaged var habitat: Environment?

}
