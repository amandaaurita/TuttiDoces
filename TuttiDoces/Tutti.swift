//
//  FirstViewController.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 4/29/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit
import MapKit

class Tutti: UIViewController {

    @IBOutlet weak var webV: UIWebView!         //Face Screen
    @IBOutlet weak var topImage: UIImageView!  //Inicial Screen
    
    var pageName = "https://www.facebook.com/querotuttidoces"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.map.delegate! = self
        navigationController?.navigationBarHidden = true;
        tabBarController?.tabBar.tintColor = UIColorFromRGB(0xE8C6CD)
        
        loadWeb()
        
    
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
    
    func loadWeb()
    {
       // var url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pageName", ofType: "html")!)
       // let requestURL = NSURL(string:urlPath)
       // var request = NSURLRequest(URL: url)
        //webV.loadRequest(request)
        
    }
     override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
     navigationController?.navigationBarHidden = true;
    
    }
    
  
    
    
  

    @IBAction func celOptions(sender: AnyObject) {
        
    }
}


