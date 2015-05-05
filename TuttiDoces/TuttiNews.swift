//
//  TuttiNews.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 5/5/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class TuttiNews: UIViewController {

    @IBOutlet weak var webV: UIWebView!
    
    var URLPath = "http://jornaldapuc.vrc.puc-rio.br/cgi/cgilua.exe/sys/start.htm?infoid=3520&sid=29#.VUi_cEIQYUU"
    
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
        webV.loadRequest(request)
    }

}
