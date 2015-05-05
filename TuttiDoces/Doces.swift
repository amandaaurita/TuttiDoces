//
//  SecondViewController.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 4/29/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class Doces: UIViewController, UITableViewDelegate, UITableViewDataSource {


   
  //  @IBOutlet weak var tableView: UITableView!
    

    var items: [String] = ["Travel", "Dance", "Food"]
    
    
    var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView = UITableView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height));
        tableView.separatorInset = UIEdgeInsetsZero;
        
        view.addSubview(tableView);
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UITableViewDataSource methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return view.frame.height/4;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:UITableViewCell = UITableViewCell(frame: view.frame);
        
        var imageView : UIImageView = UIImageView(frame: CGRectMake(0,0, view.frame.width, view.frame.height/4));
        imageView.backgroundColor = UIColor.blackColor();
        
        
        
        if(indexPath.row == 0)
        {
            imageView.image = (image: UIImage(named: "palha"))
        }
        else if(indexPath.row == 1)
        {
            imageView.image = (image: UIImage(named: "brigadeiro"))
            
        }
        else if(indexPath.row == 2)
        {
            imageView.image = (image: UIImage(named: "seasonal"))
        }
        else if(indexPath.row == 3)
        {
            imageView.image = (image: UIImage(named: "cake"))
        }
        
        imageView.contentMode = UIViewContentMode.Redraw;
        cell.addSubview(imageView);
        
        return cell;
    }    /*
    // UITableViewDelegate methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(indexPath.row == 0)
        {
           imageView.image = (image: UIImage(named: "tutti1"))
            
        }
        else if(indexPath.row == 1)
        {
            imageView.image = (image: UIImage(named: "tutti3"))
        }
        else if(indexPath.row == 2)
        {
           imageView.image = (image: UIImage(named: "tutti1"))
        }
        else
        {
        imageView.image = (image: UIImage(named: "tutti3"))
        }
        
       
        
    }*/


}

