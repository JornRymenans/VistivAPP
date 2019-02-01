//
//  MapViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    var myLocationManager:CLLocationManager = CLLocationManager.init()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLocationManager.delegate = self
        myLocationManager.requestWhenInUseAuthorization()
        
      
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //uitvoeren indien gebruiker toestemming geeft
        if (status == .authorizedWhenInUse){
            myLocationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
        }
        if(status == .denied){
            //indien geen toestemming gegeven
        }
        if (status == .notDetermined){
            //gebruiker heeft nog niets ingesteld
            myLocationManager.requestWhenInUseAuthorization()
        }
    }
  

}
