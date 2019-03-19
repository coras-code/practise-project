//
//  Recipe.swift
//  practise-project
//
//  Created by Novoda on 28/02/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import Foundation

struct Recipe {
    let title: String
    let href: URL // Link to recipe website
    let ingredients: [Ingredient]
    let thumbnail: URL
}
