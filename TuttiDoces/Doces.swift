//
//  SecondViewController.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 4/29/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class Doces: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
//    var tableView: UITableView!
    var items: [String] = ["Travel", "Dance", "Food"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating the table view
        //tableView = UITableView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height));
//        tableView = UITableView(frame: view.frame);

//        tableView.separatorInset = UIEdgeInsetsZero;
        //tableView.separatorStyle = UITableViewCellSeparatorStyle.None;
      //  view.addSubview(tableView);
        
      //  tableView.delegate = self
        //tableView.dataSource = self
        
        //changing the tab bar item color
        tabBarController?.tabBar.tintColor = UIColorFromRGB(0x673C2C)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UITableViewDataSource methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
//        return view.frame.height/3;
        return 80
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:UITableViewCell = UITableViewCell(frame: view.frame);
        
        var imageView : UIImageView = UIImageView(frame: CGRectMake(0, 0, view.frame.width, cell.frame.height));
        imageView.clipsToBounds = false
        
        
        
        if(indexPath.row == 0)
        {
            imageView.image = (image: UIImage(named: "tutti1"))
        }
        else if(indexPath.row == 1)
        {
            imageView.image = (image: UIImage(named: "tutti1"))
            
        }
        else if(indexPath.row == 2)
        {
            imageView.image = (image: UIImage(named: "tutti1"))
        }
        
        
        
        imageView.contentMode = UIViewContentMode.ScaleAspectFill;
        cell.addSubview(imageView);
        
        return cell;
    }
    
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    // UITableViewDelegate methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(indexPath.row == 0)
        {
           
            
        }
        else if(indexPath.row == 1)
        {
                    }
        else
        {
            
        }
        
       
        
    }


}

