//
//  Article.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 23/01/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import Foundation


class Article {
    
//article have header and body text
    
    let header : String
    let body : String
    
    
    
    init(header: String, body: String) {
        self.body = body
        self.header = header
    }
}
