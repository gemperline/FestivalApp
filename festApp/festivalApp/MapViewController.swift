//
//  MapViewController.swift
//  festivalApp
//
//  Created by agemperline on 10/16/19.
//  Copyright © 2019 agemperline. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    // white house long and lat
    // 38.8977° N, 77.0365° W
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 36.275251, longitude: -115.013527)
        annotation.title = "EDC"
        annotation.subtitle = "Las Vegas Speedway"
        
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        mapView.setRegion(region, animated: true)
    }
    
}


