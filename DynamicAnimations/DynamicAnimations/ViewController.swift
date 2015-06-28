//
//  ViewController.swift
//  DynamicAnimations
//
//  Created by MT-54 on 03/05/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameView: UIView!
    
    lazy var animator:UIDynamicAnimator = {
        let lazilyCreatedDynamicAnimator = UIDynamicAnimator(referenceView: self.gameView)
        return lazilyCreatedDynamicAnimator!
    }()
    
    let compositeBehavior = CompositeBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator.addBehavior(compositeBehavior)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func screenTapped(sender: AnyObject) {
        println("Screen tapped")
        dropView()
    }
    
    func dropView() {
        var side = self.gameView.bounds.width / 10
  
        var frame = CGRect(origin: CGPointZero, size: CGSize(width: side, height: side))
        frame.origin.x = CGFloat(CGFloat(arc4random()) % UIScreen.mainScreen().bounds.width)
        
        var dropView1  = UIView(frame: frame)
        
        dropView1.backgroundColor = UIColor.randomColor
        
        compositeBehavior.addDrop(dropView1)
    }

}

extension UIColor {
    class var randomColor:UIColor {
        switch(arc4random()%5){
        case 0:
            return UIColor.redColor()
        case 1:
            return UIColor.blueColor()
        case 2:
            return UIColor.greenColor()
        case 3:
            return UIColor.yellowColor()
        case 4:
            return UIColor.purpleColor()
        default:
            return UIColor.grayColor()
        }
    }
}


