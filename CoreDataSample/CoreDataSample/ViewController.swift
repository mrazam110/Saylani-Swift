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
        // Do any additional setup after loading the view, typically from a nib.
        
        let personEntity = NSEntityDescription.entityForName("Person", inManagedObjectContext: context!)
        let saad = Person(entity: personEntity!, insertIntoManagedObjectContext: context!, firstName: "Saad", lastName: "Umer", age: 22)
//        raza.firstName = "Saad"
//        raza.lastName = "Umer"
//        raza.age = 21
        
        var saveError: NSError?
        context!.save(&saveError)
        if let err = saveError {
            println("\(err.localizedDescription)")
        } else {
            println("Saved!")
        }

        
        var error: NSError?
        let request = NSFetchRequest(entityName: "Person")
        let results = context!.executeFetchRequest(request, error: &error) as [Person]
        
        if let Error = error {
            println("\(Error.localizedDescription)")
        } else {
            for person in results {
                println("********")
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

