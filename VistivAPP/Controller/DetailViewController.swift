//
//  DetailViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UIViewController {

    @IBOutlet weak var lblBandName: UILabel!
    @IBOutlet weak var tvOmschrijving: UITextView!
    @IBOutlet weak var imgBandInfo: UIImageView!
    
    
    var bandDetail:Artist?
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblBandName.text = bandDetail?.naam
        tvOmschrijving.text = bandDetail?.omschrijving
        imgBandInfo.image = UIImage(named: (bandDetail?.img)!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: bandDetail?.music, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
    }
        catch{
            print(error)
        }
    }
    
    
    @IBAction func Play(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }else{
        audioPlayer.play()
    }
    }
    
    
}
