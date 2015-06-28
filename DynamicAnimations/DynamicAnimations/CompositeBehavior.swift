//
//  CompositeBehavior.swift
//  DynamicAnimations
//
//  Created by MT-54 on 03/05/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit

class CompositeBehavior: UIDynamicBehavior {
    
    let gravityBehavior = UIGravityBehavior()
    
    lazy var collisionBehavior:UICollisionBehavior = {
        let lazilyCreatedCollisionBehavior = UICollisionBehavior()
        lazilyCreatedCollisionBehavior.translatesReferenceBoundsIntoBoundary = true
        return lazilyCreatedCollisionBehavior
    }()
    
    
    override init() {
        super.init()
        addChildBehavior(gravityBehavior)
        addChildBehavior(collisionBehavior)
        
    }
    
    func addDrop(dropView:UIView) {
        dynamicAnimator?.referenceView?.addSubview(dropView)
        gravityBehavior.addItem(dropView)
        collisionBehavior.addItem(dropView)
    }
   
}
