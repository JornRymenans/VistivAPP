//
//  PhotoViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    
    @IBOutlet weak var fotoGallerij: UIImageView!
    let imageNames = ["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg", "7.jpeg"]
    var currentImage = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoGallerij.image = UIImage(named: imageNames[currentImage])
    }
    
    
    
    @IBAction func swipePic(_ sender: UISwipeGestureRecognizer) {
        let direction = sender.direction
        switch direction {
        case UISwipeGestureRecognizer.Direction.left:
            if currentImage > 0 {
                currentImage -= 1
                fotoGallerij.image = UIImage(named: imageNames[currentImage])
            }else{
                currentImage = imageNames.count - 1
                fotoGallerij.image = UIImage(named: imageNames[currentImage])
            }
            
        case UISwipeGestureRecognizer.Direction.right:
            if currentImage < (imageNames.count-1) {
                currentImage += 1
                fotoGallerij.image = UIImage(named: imageNames[currentImage])
            }else{
                currentImage = 0
                fotoGallerij.image = UIImage(named: imageNames[currentImage])
            }
        default:
            fotoGallerij.image = UIImage(named: imageNames[0])
        }
    }
    

}
