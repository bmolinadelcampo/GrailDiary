//
//  SiteTableViewCell.swift
//  GrailDiary
//
//  Created by Belén Molina del Campo on 04/05/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

import UIKit

class SiteTableViewCell: UITableViewCell {


    @IBOutlet weak var siteNameLabel: UILabel!
    
    @IBOutlet weak var siteCountryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
