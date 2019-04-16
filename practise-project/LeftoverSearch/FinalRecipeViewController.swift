//
//  LeftoverViewController.swift
//  practise-project
//
//  Created by Novoda on 28/03/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class FinalRecipeViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var ingredients = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        label?.numberOfLines = 0
        self.label?.text = ingredients
    }
    
}
