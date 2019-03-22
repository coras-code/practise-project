//
//  Recipe.swift
//  practise-project
//
//  Created by Novoda on 28/02/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import Foundation
import UIKit

struct Results: Codable {
    let results: [Recipe]
}

struct Recipe: Codable {
    let title: String
    let href: URL // Link to recipe website
    let ingredients: String
    let thumbnail: String
    
//    enum CodingKeys: String, CodingKey {
//        case title = "title"
//        case href = "href"
//        case ingredients = "ingredients"
//        case thumbnail = "thumbnail"
    
    
    //working version
}


