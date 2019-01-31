//
//  LineUpTableViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 31/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class LineUpTableViewController: UITableViewController {

    
    let dao = LineUpDao.init()
    @IBOutlet var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dao.LineUp.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dao.LineUp[section].artistLijst!.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LineUpTableViewCell = tabelView.dequeueReusableCell(withIdentifier: "cell") as! LineUpTableViewCell
        
        let band = dao.LineUp[indexPath.section].artistLijst![indexPath.row]
        
        cell.lblBand.text = band.naam
        cell.lblUur.text = band.uur
        
        return cell
        
    }
   
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        
        return dao.LineUp[section].naam
    }

  

}
