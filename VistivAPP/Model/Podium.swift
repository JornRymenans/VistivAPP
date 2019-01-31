//
//  Podium.swift
//  VistivAPP
//
//  Created by mobapp05 on 31/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import Foundation

class Podium{
    
    var naam:String?
    var artistLijst:[Artist]?
    
    init(naam:String) {
        self.naam = naam
        artistLijst = [Artist]()
    }
    
}
