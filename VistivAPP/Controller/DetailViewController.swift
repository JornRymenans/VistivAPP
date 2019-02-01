//
//  DetailViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblBandName: UILabel!
    @IBOutlet weak var tvOmschrijving: UITextView!
    
    var bandDetail:Artist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblBandName.text = bandDetail?.naam
        tvOmschrijving.text = bandDetail?.omschrijving
    }
    

    

}
