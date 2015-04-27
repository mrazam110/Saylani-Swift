//
//  ViewController.swift
//  CoreDataSample
//
//  Created by MT-54 on 26/04/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context: NSManagedObjectContext? {
        get {
            let appDel = UIApplication.sharedApplication().delegate as AppDelegate
            let _context = appDel.managedObjectContext
            return _context
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personEntity = NSEntityDescription.entityForName("Person", inManagedObjectContext: context!)
        
        let saad = Person(entity: personEntity!, insertIntoManagedObjectContext: context!, firstName: "Saad", lastName: "Umer", age: 22)
        
        let raza = Person(entity: personEntity!, insertIntoManagedObjectContext: context!)
        raza.firstName = "Raza"
        raza.lastName = "Master"
        raza.age = 21
        
        var saveError: NSError?
        context!.save(&saveError)
        
        if let _error = saveError {
            println("\(_error.localizedDescription)")
        } else {
            println("Saved!")
        }

        
        var error: NSError?
        let request = NSFetchRequest(entityName: "Person")
        let results = context!.executeFetchRequest(request, error: &error) as [Person]
        
        if let _error = error {
            println("\(_error.localizedDescription)")
        } else {
            for person in results {
                println("*********************")
                println("\(person.firstName)")
                println("\(person.lastName)")
                println("\(person.age)")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

