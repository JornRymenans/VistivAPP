//
//  LineUpSatTableViewController.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class LineUpSatTableViewController: UITableViewController {

    let dao = LineUpSatDao.init()
    @IBOutlet var tableViewSat: UITableView!
    
    
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
        
        let cell:LineUpSatTableViewCell = tableViewSat.dequeueReusableCell(withIdentifier: "cell2") as! LineUpSatTableViewCell
        
        let band = dao.LineUp[indexPath.section].artistLijst![indexPath.row]
        
        cell.lblBand.text = band.naam
        cell.lblUur.text = band.uur
        
        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        
        return dao.LineUp[section].naam
    }

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination:DetailViewController = segue.destination as! DetailViewController
        let click = tableView.indexPathForSelectedRow
        let podium = dao.LineUp[click!.section]
        let artist = podium.artistLijst![click!.row]
        destination.bandDetail = artist
    }

}
