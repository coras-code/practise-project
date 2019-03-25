//
//  Recipe.swift
//  practise-project
//
//  Created by Novoda on 28/02/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import Foundation
import UIKit

struct Outcome: Decodable {
    let title: String //can leave out of code
    let version: Double //can leave out of code
    let href: String //URL //can leave out of code
    let results: [Recipe]
    
    }
    
    enum CodingKeys: String, CodingKey {
    case results = "recipes"
}

struct Recipe: Decodable {
    let title: String
    let href: String // was an URL but i changed it
    let ingredients: String
    let thumbnail: String
    
    
    
    //    //Old method to parse Json-creating a dictionary from the Outcome
    //    //Access the dictionary, cast it and with a defualt value
    //    init(jason: [String: Any]) {
    //            title = jason["title"] as? String ?? ""
    //            href = jason["href"] as? String ?? ""
    //            ingredients = jason["ingredients"] as? String ?? ""
    //            thumbnail = jason["thumbnail"] as? String ?? ""
    //    }
}
