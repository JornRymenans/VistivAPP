//
//  LineUpDao.swift
//  VistivAPP
//
//  Created by mobapp05 on 31/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import Foundation

class LineUpDao{
    
    var LineUp:[Podium]
    
    init() {
        
        //opvullen bands
        let ReelBigFish = Artist.init(naam: "Reel big fish", omschrijving: "Band info", uur: "22h")
        let Swashbuckle = Artist.init(naam: "Swashbuckle", omschrijving: "Band info", uur: "20h")
        let AdmiralFreebie = Artist.init(naam: "AdmiralFreebie", omschrijving: "Band info", uur: "22h")
        let Hootie = Artist.init(naam: "Hootie & The Blowfish", omschrijving: "Band info", uur: "20h")
        let CountryJoe = Artist.init(naam: "Country Joe and the Fish", omschrijving: "Band info", uur: "22h")
        let TheWailers  = Artist.init(naam: "The Wailers", omschrijving: "Band info", uur: "20h")
        let LeftoverSalmon = Artist.init(naam: "Reel big fish", omschrijving: "Band info", uur: "22h")
        let TheEels = Artist.init(naam: "The Eels", omschrijving: "Band info", uur: "20h")
        let Mutiny = Artist.init(naam: "Mutiny", omschrijving: "Band info", uur: "20h")
        let PiratesForSail = Artist.init(naam: "Pirates for Sail", omschrijving: "Band info", uur: "20h")
        let RumRebellion = Artist.init(naam: "Rum Rebellion", omschrijving: "Band info", uur: "20h")
        let PirateSpaceship = Artist.init(naam: "Pirate Spaceship", omschrijving: "Band info", uur: "20h")
        let TheBeachBoys = Artist.init(naam: "The Beach Boys", omschrijving: "Band info", uur: "20h")
        let Seapony = Artist.init(naam: "Seapony", omschrijving: "Band info", uur: "20h")
        let DirtyBeaches = Artist.init(naam: "Dirty Beaches", omschrijving: "Band info", uur: "20h")
        let WashedOut = Artist.init(naam: "Washed Out", omschrijving: "Band info", uur: "20h")
        
        //Podiums opvullen
        
        let BigFishStage = Podium.init(naam: "Big Fish Stage")
        BigFishStage.artistLijst! += [ReelBigFish, Hootie, TheWailers, LeftoverSalmon, TheEels]
        
        let PirateStage = Podium.init(naam: "Pirate Stage")
        PirateStage.artistLijst! += [Mutiny, PiratesForSail, RumRebellion, PirateSpaceship]
        
        let RedFishStage = Podium.init(naam: "Red Fish Stage")
        RedFishStage.artistLijst! += [Swashbuckle, AdmiralFreebie, CountryJoe]
        
        let BeachStage = Podium.init(naam: "Beach Stage")
        BeachStage.artistLijst! += [TheBeachBoys, Seapony, DirtyBeaches, WashedOut]
        
    
        
        //Line up afmaken
        
        self.LineUp = [BigFishStage, PirateStage, RedFishStage, BeachStage]
        
    }
}
