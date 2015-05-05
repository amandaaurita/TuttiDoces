//
//  FirstViewController.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 4/29/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit
import Foundation
import MapKit
import MessageUI

class TuttiFirst: UIViewController, UIAlertViewDelegate {

    
    @IBOutlet weak var topImage: UIImageView!  //Inicial Screen
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        navigationController?.navigationBarHidden = true;
        tabBarController?.tabBar.tintColor = UIColorFromRGB(0x673C2C)
        
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
        tabBarController?.tabBar.tintColor = UIColorFromRGB(0x673C2C)

        
    }
    
  
    
    
  

    @IBAction func celOptions(sender: AnyObject) {
        
        var cel: String = "+55 21 987306920"
        var tel: String = "5521987306920"
        
        var alert = UIAlertController(title: cel, message: "Talk with TuttiDoces", preferredStyle: UIAlertControllerStyle.Alert)

        let callAction = UIAlertAction(title: "Call", style: UIAlertActionStyle.Default, handler: {
            (action) in
            var url: NSURL = NSURL(string: "tel://+\(tel)")!
            UIApplication.sharedApplication().openURL(url)
            
        })
        
        /*let sendSMSAction = UIAlertAction(title: "Send Message", style: UIAlertActionStyle.Default, handler: {
            (action) in
            //inserir codigo
        })*/
        
        let copyCellAction = UIAlertAction(title: "Copy Number", style: UIAlertActionStyle.Default, handler: {
            (action) in
            UIPasteboard.generalPasteboard().string = tel
        })
        
        let cancelCellAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {
            (action) in
            self.dismissViewControllerAnimated(false, completion: nil)
        })
        
        
        
        
        
        alert.addAction(callAction)
        //alert.addAction(sendSMSAction)
        alert.addAction(copyCellAction)
        alert.addAction(cancelCellAction)
        
        self.presentViewController(alert, animated: true, completion: {
           println("Call function started")
        })
        
    }
    
    func configuredMessageComposeViewController(){
        
        let textMessageRecipients = ["21987306920"]
        let messageComposeVC = MFMessageComposeViewController()
       // messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "Hey friend - Just sending a text message in-app using Swift!"
        
    }
}


