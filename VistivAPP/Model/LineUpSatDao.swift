//
//  LineUpSatDao.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import Foundation

class LineUpSatDao{
    
    var LineUp:[Podium]
    
    init() {
        
        //opvullen bands zaterdag
        let TheBeachBoys = Artist.init(naam: "The Beach Boys", omschrijving: "Band info", uur: "20h")
        let Seapony = Artist.init(naam: "Seapony", omschrijving: "Band info", uur: "20h")
        let DirtyBeaches = Artist.init(naam: "Dirty Beaches", omschrijving: "Band info", uur: "20h")
        let WashedOut = Artist.init(naam: "Washed Out", omschrijving: "Band info", uur: "20h")
        let Swashbuckle = Artist.init(naam: "Swashbuckle", omschrijving: "Band info", uur: "20h")
        let AdmiralFreebie = Artist.init(naam: "AdmiralFreebie", omschrijving: "Band info", uur: "22h")
        let CountryJoe = Artist.init(naam: "Country Joe and the Fish", omschrijving: "Band info", uur: "22h")
        
        //Podiums opvullen zaterdag
        let RedFishStage = Podium.init(naam: "Red Fish Stage")
        RedFishStage.artistLijst! += [Swashbuckle, AdmiralFreebie, CountryJoe]
        
        let BeachStage = Podium.init(naam: "Beach Stage")
        BeachStage.artistLijst! += [TheBeachBoys, Seapony, DirtyBeaches, WashedOut]
        
        
        //Line up afmaken
        
        self.LineUp = [RedFishStage, BeachStage]
        
    }
    
}
