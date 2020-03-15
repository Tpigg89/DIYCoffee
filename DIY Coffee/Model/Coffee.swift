//
//  Coffee.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 25/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import Foundation

struct Coffee {
    
    let tital: String
    let image: String
    let desciption: String
    
    init(tital: String, image: String, description: String) {
        self.tital = tital
        self.image = image
        self.desciption = description
    }
}


struct Applience {
    
    let tital: String
    let image: String
    let description: String
    
    init(title: String, image: String, description: String) {
        self.tital = title
        self.image = image
        self.description = description
    }
    
}
