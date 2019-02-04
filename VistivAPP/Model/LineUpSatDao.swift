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
        let TheBeachBoys = Artist.init(naam: "The Beach Boys", omschrijving: "The Beach Boys is een Amerikaanse band die in 1961 werd opgericht door de broers Brian Wilson, Dennis Wilson en Carl Wilson, hun neef Mike Love en schoolvriend Al Jardine. Met harde hand aangespoord door vader en manager Murry Wilson, zelf een weinig succesvolle liedjesschrijver, maakten de jongens muziek in de stijl van The Four Freshmen, waarbij harmonieuze zang de hoofdrol speelde. De single Surfin' uit 1961 werd een hit en was typerend voor de richting die de band de eerstvolgende jaren zou volgen: een combinatie van surfmuziek, een stijl die tot dan toe vooral instrumentaal was geweest, en teksten over surfen, auto's en meisjes. In hoog tempo werden singles en The Beach Boys zelf waren onze grootste concurrenten.", uur: "18:00-19:00", img: "BeachBoys.jpg", music: "Song10")
        let Seapony = Artist.init(naam: "Seapony", omschrijving: "Seapony is an American indie pop band from Seattle. They formed in 2010 and have released two albums on Hardly Art. Seapony first attracted attention through four songs offered for free on Bandcamp.[1] Their first release was the 3-song single, Dreaming, followed by their debut album, Go With Me, in 2011. Both of their albums have been recorded in a home studio[2]. The trio are also known for their use of a drum machine in their recordings. Seapony toured Europe and Japan in 2013.", uur: "19:30-20:30", img: "seapony.jpg", music: "Song11")
        let DirtyBeaches = Artist.init(naam: "Dirty Beaches", omschrijving: "Alex Zhang Hungtai (born September 4, 1980 in Taipei) is a Taiwanese-born Canadian musician and actor. In addition to his given name, he makes music under the names Last Lizard and Dirty Beaches. Zhang released several EPs and three albums as Dirty Beaches on cassette-only labels before releasing his fourth full-length, Badlands, in March 2011.[1] Badlands, unlike Zhang's earlier work, included his vocals on most songs. The album was long listed as a nominee for the 2011 Polaris Music Prize.[2] Drifters/Love Is The Devil followed in 2013, pushing further into no wave, electronic music, jazz and ambient territory. In 2014 Zhang decided to end the Dirty Beaches project after releasing the instrumental album Stateless, on which he played sax. As Last Lizard, Zhang collaborated with jazz and improvisational musicians and released new solo pieces on Soundcloud, Vimeo and Vine. In 2016 Zhang released the instrumental piano album Knave of Hearts under his own name. Zhang has also recorded original film soundtracks for several documentaries, including Water Park (2012) and Who Is Arthur Chu? (2017), in addition to directing music videos for himself and others.", uur: "21:00-23:00", img: "Dirty.jpg", music: "Song12")
        let WashedOut = Artist.init(naam: "Washed Out", omschrijving: "Ernest Greene (Perry, Georgia, 3 oktober 1982), beter bekend als Washed Out, is een Amerikaans singer-songwriter en muziekproducent. Zijn muziek wordt omschreven als chillwave of indie. Hij bracht in 2009 kort na elkaar zijn eerste twee EP's uit, gevolgd door de albums Within and Without in 2011 en Paracosm in 2013. Ernest Greene werd geboren op 3 oktober 1982 in het stadje Perry in de Amerikaanse staat Georgia, alwaar hij ook zijn kindertijd doorbracht. Hij had al enige jaren onder andere namen muziek uitgebracht voordat hij de artiestennaam Washed Out aannam. Zo nam hij samen met de band Bedroom uit Columbia een aantal dancenummers op. Halverwege 2009 bracht het label Mexican Summer de debuut-EP van Washed Out, genaamd Life of Leisure, als digitale download uit. In september van datzelfde jaar werd de EP High Times door het label Mirror Universe in een gelimiteerde uitgave op cassette uitgebracht, gevolgd door een uitgave van Life of Leisure door Mexican Summer op vinyl.", uur: "23:30-02:00", img: "washedout.png", music: "Song13")
        let Swashbuckle = Artist.init(naam: "Swashbuckle", omschrijving: "Swashbuckle is een Amerikaanse piratenmetalband uit New Jersey sinds 2005. De band neigt naar thrashmetal. De nummers bevatten invloeden van matrozenliederen en de songteksten gaan uitsluitend over piratenthema's. De bandleden kleden zich ook als piraten.", uur: "18:00-20:00", img: "swashbuckle.png", music: "Song14")
        let AdmiralFreebie = Artist.init(naam: "Admiral Freebee", omschrijving: "Admiral Freebee is de artiestennaam van de Antwerpse artiest Tom Van Laere (1975). Hij haalde de naam uit het boek On the Road van Jack Kerouac. Zijn muziek kan omschreven worden als roots-rock, sterk gelijkend op het werk van Neil Young. Uiterlijk onderscheidt de admiraal zich door zijn groot postuur en volle baard. Admiral Freebee brak door door de tweejaarlijkse wedstrijd Humo's Rock Rally, editie 2000. Hij werd tweede, na Mintzkov Luna. Meestal treedt Admiral Freebee op als groep, in een rockbezetting. De bandleden wisselen daarbij voortdurend.", uur: "21:00-22:30", img: "Admiral.jpg", music: "Song15")
        let CountryJoe = Artist.init(naam: "Country Joe and the Fish", omschrijving: "Country Joe and the Fish was een Amerikaanse rockgroep, die vooral bekendstond om haar protestliederen tegen de Vietnamoorlog. Country Joe and the Fish werd in 1965 opgericht door leadzanger Country Joe McDonald en gitarist Barry The Fish Melton. Zij waren samen de enige vaste bandleden; voor gelegenheden kreeg het duo de hulp van collega-artiesten. De band van Melton en McDonald is een typisch voorbeeld van psychedelische muziek. Hun album Electric Music for the Mind and Body was één van de eerste psychedelische LP's ooit, en had zeer veel invloed op andere bands. In 1966 brachten Country Joe and the Fish het nummer I-Feel-Like-I'm-Fixin'-to-Die-Rag uit, waarmee zij protesteerden tegen de oorlog in Vietnam. Dit nummer werd wereldwijd een ongekend succes, en werd een lijflied van veel Vietnamsoldaten. Het werd de grootste hit die de band kreeg. Country Joe and the Fish werden voornamelijk bekend door hun optreden op Woodstock in 1969, waar zij de I-Feel-Like-I'm-Fixin'-to-Die-Rag zeer succesvol uitvoerden. Ook eerder al maakten zij furore, toen ze optraden op het Monterey Pop Festival in 1967. Bovendien speelden de twee mee in de films Zachariah (1971) en More American Graffiti (1979). In het begin van de jaren '70 werd de band opgeheven. In 1977 kwamen ze nog bij elkaar voor een reünie-album en ook in 2004 werkten ze weer even samen, maar daarmee werd het boek definitief gesloten. Barry Melton werd lid van de band The Dinosaurs en Country Joe McDonald ging solo verder.", uur: "23:00-01:00", img: "Country.jpg", music: "Song16")
        
        //Podiums opvullen zaterdag
        let RedFishStage = Podium.init(naam: "Red Fish Stage")
        RedFishStage.artistLijst! += [Swashbuckle, AdmiralFreebie, CountryJoe]
        
        let BeachStage = Podium.init(naam: "Beach Stage")
        BeachStage.artistLijst! += [TheBeachBoys, Seapony, DirtyBeaches, WashedOut]
        
        
        //Line up afmaken
        
        self.LineUp = [RedFishStage, BeachStage]
        
    }
    
}
