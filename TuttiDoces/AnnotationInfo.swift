//
//  Map.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 5/4/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class AnnotationInfo: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var imagee: UIImage!
    var text: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBarHidden = false 

        self.image.image = self.imagee
        self.label.text = self.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
