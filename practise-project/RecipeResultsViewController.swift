//
//  RecipeResultsViewController.swift
//  practise-project
//
//  Created by Novoda on 04/01/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class RecipeResultsViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        label.text = "'" + recipeName + "'"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
