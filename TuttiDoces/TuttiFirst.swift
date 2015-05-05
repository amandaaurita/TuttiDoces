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

class TuttiFirst: UIViewController {

    
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
        
        var tel: String = "tel: 55 21 987306920"
        
        var alert = UIAlertController(title: tel, message: "Talk with TuttiDoces", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Call", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Send Message", style: UIAlertActionStyle.Default , handler: nil))
        alert.addAction(UIAlertAction(title: "Copy Number", style: UIAlertActionStyle.Default , handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
        
        /*
        //21 988 26 - 61 83
        if( alertaNum == 3 ){
            if (buttonIndex == 0) {
                //Botão Cancelar
            }
            else if (buttonIndex == 1) {
                //Botão Ligar
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:21988266183"]];
            }
            else if (buttonIndex == 2) {
                //Botão Copiar número
                UIPasteboard *pb = [UIPasteboard generalPasteboard];
                [pb setString:@"21988266183"];
            }
            else if (buttonIndex == 3) {
                //Botão Enviar mensagem
                [self showSMS:@"21988266183"];*/
        
    }
    
    func alertFunc(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        
        var tel: String = "tel:995531689"
        
        if(buttonIndex == 0) //Call Button
        {
            var url: NSURL = NSURL(string: tel)!
            UIApplication.sharedApplication().openURL(url)
            println("Entrou aqui")
        }
        if(buttonIndex == 1) //Send Message Button
        {
            self
            
        }
        if(buttonIndex == 2)//
        {
            UIPasteboard.generalPasteboard().string = tel
        }
    }
    
    func configuredMessageComposeViewController(){
        
        let textMessageRecipients = ["21987306920"]
        let messageComposeVC = MFMessageComposeViewController()
       // messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "Hey friend - Just sending a text message in-app using Swift!"
        
    }
}


