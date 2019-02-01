//
//  Pins.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import Foundation
import MapKit

class Pins{
    
    //verplicht in te vullen, anders geen annotatie
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var img:UIImage?
    
    init(coordinate:CLLocationCoordinate2D, title:String, img:UIImage) {
        self.coordinate = coordinate
        //overgenoemn uit MKannotation
        self.title = title
        self.img = img
        }
}
