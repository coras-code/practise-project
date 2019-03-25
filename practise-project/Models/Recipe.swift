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
    let href: String // was an URL but i changed it
    let ingredients: String
    let thumbnail: String
    
    
//    enum CodingKeys: String, CodingKey {
//        case title = "title"
//        case href = "href"
//        case ingredients = "ingredients"
//        case thumbnail = "thumbnail"
    
    
    init(result: [String: Any]) {
    title = result["title"] as? String ?? ""
    href = result["href"] as? String ?? ""
    ingredients = result["ingredients"] as? String ?? ""
    thumbnail = result["thumbnail"] as? String ?? ""
        
        print(title)
    
    }


}
