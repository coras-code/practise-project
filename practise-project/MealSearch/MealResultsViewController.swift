//
//  RecipeResultsViewController.swift
//  practise-project
//
//  Created by Novoda on 04/01/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class MealResultsViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var mealName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "'\(mealName)'"
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
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
