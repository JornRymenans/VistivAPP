//
//  TicketViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 04/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var lblFriday: UILabel!
    @IBOutlet weak var lblSaturday: UILabel!
    @IBOutlet weak var lblCombi: UILabel!
    @IBOutlet weak var stepperFri: UIStepper!
    @IBOutlet weak var stepperSat: UIStepper!
    @IBOutlet weak var stepperCom: UIStepper!
    @IBOutlet weak var lblFriTot: UILabel!
    @IBOutlet weak var lblSatTot: UILabel!
    @IBOutlet weak var lblComTot: UILabel!
    @IBOutlet weak var lbltotaal: UILabel!
    var totaal:Double = 0
    @IBOutlet weak var tfemail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func stepperFriday(_ sender: UIStepper) {
        lblFriday.text = Int(sender.value).description
        lblFriTot.text = "\(sender.value * 8.99) euro"
        totaal += (sender.value * 8.99)
        lbltotaal.text = "\(totaal) euro"
    }
    
   
    @IBAction func stepperSaturday(_ sender: UIStepper) {
        lblSaturday.text = Int(sender.value).description
        lblSatTot.text = "\(sender.value * 9.99) euro"
        totaal += (sender.value * 9.99)
        lbltotaal.text = "\(totaal) euro"
    }
    
    
    @IBAction func stepperCombi(_ sender: UIStepper) {
        lblCombi.text = Int(sender.value).description
        lblComTot.text = "\(sender.value * 12.00) euro"
        totaal += (sender.value * 12.00)
        lbltotaal.text = "\(totaal) euro"
    }
    
   
    @IBAction func keyboard(_ sender: UITapGestureRecognizer) {
        tfemail.resignFirstResponder()
    }
    
  
    
    @IBAction func bestel() {
        if tfemail.text == "" {
            let alert = UIAlertController.init(title: "Opgepast!", message: "U bent u e-mail adres vergeten in te vullen", preferredStyle: .alert)
            let okAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }else{
        let alert = UIAlertController.init(title: "Veel plezier!", message: "Uw tickets zijn verzonden naar \(tfemail.text!)", preferredStyle:  .alert)
        let okAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        lblFriday.text = "0"
        lblSaturday.text = "0"
        lblCombi.text = "0"
        lblFriTot.text = "0 euro"
        lblSatTot.text = "0 euro"
        lblComTot.text = "0 euro"
        lbltotaal.text = "0 euro"
        tfemail.text = ""
        }
    }
    
    
    
    
    
}
