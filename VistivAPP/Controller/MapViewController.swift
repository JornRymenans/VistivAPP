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

    
    var pinnekes:[MyAnnotation] = [MyAnnotation]()
    @IBOutlet weak var kaart: MKMapView!
    var myLocationManager:CLLocationManager = CLLocationManager.init()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let BigfishStage = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.151502, 2.720532), title: "Big Fish Stage", img: UIImage(named: "NewPin.jpg")!)
        let RedFishStage = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152072, 2.721583), title: "Red-Fish Stage", img: UIImage(named: "NewPin.jpg")!)
        let BeachStage = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.151119, 2.718182), title: "Beach Stage", img: UIImage(named: "NewPin.jpg")!)
        let PirateStage = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152280, 2.722559), title: "Pirate Stage", img: UIImage(named: "NewPin.jpg")!)
        let wc = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.150692, 2.719523), title: "WC", img: UIImage(named: "NewPin.jpg")!)
        let Food = MyAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.151486, 2.723825), title: "Food & Drinks", img: UIImage(named: "NewPin.jpg")!)
        
        
        pinnekes += [BigfishStage, RedFishStage, BeachStage, PirateStage, wc, Food]
        
        kaart.addAnnotations(pinnekes)
        
        
        
        myLocationManager.delegate = self
        myLocationManager.requestWhenInUseAuthorization()
        
        let latitude:CLLocationDegrees = 51.151509
        
        let longitude:CLLocationDegrees = 2.720532
        
        let latDelta:CLLocationDegrees = 0.005
        
        let lonDelta:CLLocationDegrees = 0.005
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location = CLLocationCoordinate2DMake(latitude, longitude)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        kaart.setRegion(region, animated: false)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //uitvoeren indien gebruiker toestemming geeft
        if (status == .authorizedWhenInUse){
            myLocationManager.startUpdatingLocation()
            kaart.showsUserLocation = true
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
