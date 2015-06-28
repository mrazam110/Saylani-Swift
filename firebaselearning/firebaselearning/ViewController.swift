//
//  ViewController.swift
//  firebaselearning
//
//  Created by MT-54 on 24/05/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myRootRef = Firebase(url: "https://saylanifirebase123.firebaseio.com")
        
//        var ref = Firebase(url: "https://saylanifirebase123.firebaseio.com/users/alanisawesome")
//        
//        ref.setValue("Saad here")
        
        
        /*var alanisawesome = ["full_name": "Alan Turing", "date_of_birth": "June 23, 1912"]
        var gracehop = ["full_name": "Grace Hopper", "date_of_birth": "December 9, 1906"]
        
        var usersRef = myRootRef.childByAppendingPath("users")
        
        var users = ["alanisawesome": alanisawesome, "gracehop": gracehop]
        usersRef.setValue(users)*/
        /*var usersRef = myRootRef.childByAppendingPath("users")
        
        var hopperRef = usersRef.childByAppendingPath("gracehop")
        var nickname = ["nickname": "Amazing Grace"]
        
        hopperRef.updateChildValues(nickname)*/
        
        /*myRootRef.setValue("My New Value", withCompletionBlock: { (err: NSError?, firebase: Firebase!) -> Void in
            if let error = err {
                println(error.localizedDescription)
            }else {
                println("Success !! ")
            }
        })*/
        
        var ref = Firebase(url:"https://saylanifirebase123.firebaseio.com")
        // Attach a closure to read the data at our posts reference
        
        var mainDic = [:]
        
        ref.observeEventType(.Value, withBlock: { snapshot in
            
            mainDic = snapshot.value as NSDictionary
            println(mainDic)
            println("****************")
            var dict = mainDic.objectForKey("users") as NSDictionary
            println(dict)
            
            for (key,value) in dict
            {
                for (keyy,valuee) in value as NSDictionary {
                    println(valuee)
                }
            }
            
            }, withCancelBlock: { error in
                println(error.description)
        })
        myRootRef = myRootRef.childByAppendingPath("users").childByAppendingPath("gracehop")
        myRootRef.removeValueWithCompletionBlock { (error: NSError?, firebase: Firebase!) -> Void in
            
        }
    }
    
    
    
    
    
    
    
    //var dic = mainDic.objectForKey("users") as NSDictionary
    //println(dic)
    
    
    /*for (key, val) in dic {
    if let v = val as? NSDictionary {
    for (key, valu) in v {
    println(valu)
    }
    }
    }
    */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

