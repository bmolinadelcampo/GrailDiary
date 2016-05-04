//
//  Site.swift
//  GrailDiary
//
//  Created by Belén Molina del Campo on 04/05/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

import UIKit

class Site {

    var name: String?
    var country: String?
    var buildingDate: String?
    
    init(dictionary: [String: AnyObject]) {
        
        if let name = dictionary["name"] as? String
        {
            self.name = name
        }
        
        if let country = dictionary["country"] as? String
        {
            self.country = country
        }
        
        if let buildingDate = dictionary["buildingDate"] as? String
        {
            self.buildingDate = buildingDate
        }
    }
}
