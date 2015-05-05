//
//  TuttiFace.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 5/4/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class TuttiFace: UIViewController {
   
    
    @IBOutlet weak var webV: UIWebView!
    
    var URLPath = "https://www.facebook.com/querotuttidoces"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBarHidden = false
        
        
        loadAdressURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAdressURL()
    {
        
        let requestURL = NSURL(string: URLPath)
        let request = NSURLRequest(URL:requestURL!)
        //webV.loadRequest(requestURL)
      
        
        // var url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pageName", ofType: "html")!)
        // let requestURL = NSURL(string:urlPath)
        // var request = NSURLRequest(URL: url)
        //webV.loadRequest(request)
        
    }

}
