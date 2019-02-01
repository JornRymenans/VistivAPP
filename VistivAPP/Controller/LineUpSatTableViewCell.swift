//
//  LineUpSatTableViewCell.swift
//  VistivAPP
//
//  Created by mobapp05 on 01/02/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class LineUpSatTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblUur: UILabel!
    @IBOutlet weak var lblBand: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
