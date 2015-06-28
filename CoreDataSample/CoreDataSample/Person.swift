//
//  Person.swift
//  CoreDataSample
//
//  Created by MT-54 on 26/04/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import Foundation
import CoreData

class Person: NSManagedObject {

    @NSManaged var firstName: String
    @NSManaged var lastName: String
    @NSManaged var age: Int32
    
    init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?, firstName: String, lastName: String, age: Int) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
        self.firstName = firstName
        self.lastName = lastName
        self.age = Int32(age)
    }
    
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    

}
