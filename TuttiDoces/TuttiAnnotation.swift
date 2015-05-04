//
//  TuttiAnnotation.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 5/4/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import MapKit
import UIKit

class TuttiAnnotation: NSObject, MKAnnotation {
    
    let title: String!
    let subtitle: String!
    let coordinate: CLLocationCoordinate2D
    let image: UIImage!
    let extraInfo: String!
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, image: UIImage, extraInfo: String)
    {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.image = image
        self.extraInfo = extraInfo
        
        super.init()
    
    }
}
    
    
    



