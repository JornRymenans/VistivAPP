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
        let ReelBigFish = Artist.init(naam: "Reel big fish", omschrijving: "Band info", uur: "18:00-19:30")
        let Hootie = Artist.init(naam: "Hootie & The Blowfish", omschrijving: "Band info", uur: "20:00-22:00")
        let TheWailers  = Artist.init(naam: "The Wailers", omschrijving: "Band info", uur: "22:00-24:00")
        let LeftoverSalmon = Artist.init(naam: "Left over Salmon", omschrijving: "Band info", uur: "00:30-02:00")
        let TheEels = Artist.init(naam: "The Eels", omschrijving: "Band info", uur: "16:00-17:30")
        let Mutiny = Artist.init(naam: "Mutiny", omschrijving: "Band info", uur: "18:00-19:00")
        let PiratesForSail = Artist.init(naam: "Pirates for Sail", omschrijving: "Band info", uur: "19:30-21:30")
        let RumRebellion = Artist.init(naam: "Rum Rebellion", omschrijving: "Band info", uur: "21:00-22:30")
        let PirateSpaceship = Artist.init(naam: "Pirate Spaceship", omschrijving: "Band info", uur: "23:00-01:00")
        
        //Podiums opvullen
        
        let BigFishStage = Podium.init(naam: "Big Fish Stage")
        BigFishStage.artistLijst! += [TheEels, ReelBigFish, Hootie, TheWailers, LeftoverSalmon]
        
        let PirateStage = Podium.init(naam: "Pirate Stage")
        PirateStage.artistLijst! += [Mutiny, PiratesForSail, RumRebellion, PirateSpaceship]
        
        
        
    
        
        //Line up afmaken
        
        self.LineUp = [BigFishStage, PirateStage]
        
    }
}
