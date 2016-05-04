//
//  DetailViewController.swift
//  GrailDiary
//
//  Created by Belén Molina del Campo on 04/05/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var buildingDateLabel: UILabel!
    var site: Site?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let siteName = site?.name {
            nameLabel.text = siteName
        }else{
            nameLabel.text = "-"
        }
        
        if let siteCountry = site?.country {
            countryLabel.text = siteCountry
        }else{
            countryLabel.text = "-"
        }
        
        if let buildingDate = site?.buildingDate {
            buildingDateLabel.text = buildingDate
        }else{
            buildingDateLabel.text = "-"
        }
    }

}
