//
//  FirstViewController.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 4/29/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit
import MapKit

class TuttiFirst: UIViewController {

    
    @IBOutlet weak var topImage: UIImageView!  //Inicial Screen
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        navigationController?.navigationBarHidden = true;
        tabBarController?.tabBar.tintColor = UIColorFromRGB(0xFEE0CA)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
   
     override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
     navigationController?.navigationBarHidden = true;
    
    }
    
  
    
    
  

    @IBAction func celOptions(sender: AnyObject) {
        
        var tel: String = "tel:21987306920"
        var url: NSURL = NSURL(string: tel)!
        UIApplication.sharedApplication().openURL(url)
        
    }
}


