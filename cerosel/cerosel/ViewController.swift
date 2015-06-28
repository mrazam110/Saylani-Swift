//
//  ViewController.swift
//  cerosel
//
//  Created by MT-54 on 14/06/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate {

    let screenRect = UIScreen.mainScreen().bounds
    
    var imageArray:[UIImage] = [UIImage]()
    
    var count = 0;
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //appending image
        imageArray.append(UIImage(named: "1.png")!)
        imageArray.append(UIImage(named: "2.png")!)
        imageArray.append(UIImage(named: "3.png")!)
        
        
        //Setting content size
        scrollView.contentSize = CGSize(width: screenRect.width * CGFloat(imageArray.count), height: screenRect.height)
        
        //for var i:Int = 0; i < imageArray.count; i++
        for i in 0..<imageArray.count {
            var imgView = UIImageView(frame: CGRectMake(screenRect.width * CGFloat(i), 0, screenRect.width, screenRect.height))
            imgView.image = imageArray[i]
            
            scrollView.addSubview(imgView)
        }
    }

    @IBAction func nextBtnClick(sender: AnyObject) {
        
        //PageControl 0,1,2 .... ImageArray.count 1,2,3
        if pageControl.currentPage == imageArray.count - 1 {
            self.performSegueWithIdentifier("next", sender: self)
        }
        scrollView.scrollRectToVisible(
            CGRectMake(screenRect.width * CGFloat(++pageControl.currentPage),   //x (320*(0,1,2))
                0,                          //y
                screenRect.width,           //width
                screenRect.height),         //height
            animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

