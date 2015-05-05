//
//  Map.swift
//  TuttiDoces
//
//  Created by Amanda Aurita Araujo Fernandes on 5/4/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit
import MapKit

class Map: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBarHidden = false

        self.map.delegate = self
        loadMap()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "toInfo")
        {
                let vc = segue.destinationViewController as! AnnotationInfo
            let annot = sender as! TuttiAnnotation
            
            vc.imagee = annot.image
            vc.text = annot.extraInfo
        }
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if let annotation = annotation as? TuttiAnnotation {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView {
                
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as! UIView
                
                
            }
            return view
        }
        
        return nil
    }
    
    
    func loadMap()
    {
        let middleLocation = CLLocation(latitude: -22.960914, longitude: -43.262884)
        let coordinateMiddle = MKCoordinateRegionMakeWithDistance(middleLocation.coordinate, 7000, 7000)
        self.map.setRegion(coordinateMiddle, animated: true)
        
        let pucLocation = CLLocation(latitude: -22.978625, longitude: -43.233238)
        let freguesiaLocation = CLLocation(latitude:
            -22.938539, longitude: -43.340469)
        
        
        
        let ta1 = TuttiAnnotation(title: "PUC-Rio", subtitle: "Where to find TuttiDoces daily", coordinate: CLLocationCoordinate2D(latitude: pucLocation.coordinate.latitude , longitude: pucLocation.coordinate.longitude), image: UIImage(named: "pucImage")!, extraInfo: " The Pontifical Catholic University of Rio de Janeiro.s a very good college and is where Amanda Aurita started sell TuttiDoces")
        
         let ta2 = TuttiAnnotation(title: "Freguesia", subtitle: "Where TuttiDoces born", coordinate: CLLocationCoordinate2D(latitude: freguesiaLocation.coordinate.latitude , longitude: freguesiaLocation.coordinate.longitude), image: UIImage(named: "freguesiaImage")!, extraInfo: "Freguesia is located in jacarepagua. It is a quiet and nice neighborhood. With Tutti Doces gets even better")
        
        
        self.map.addAnnotation(ta1)
        self.map.addAnnotation(ta2)
        
        
    }
    
    func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl!) {
        performSegueWithIdentifier("toInfo", sender: view.annotation)
        
    }


}
