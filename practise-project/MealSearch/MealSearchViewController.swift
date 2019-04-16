//
//  SearchViewController.swift
//  practise-project
//
//  Created by Novoda on 04/01/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class MealSearchViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func searchRecipes(_ sender: Any) {
        
        if let searchText = searchTextField.text, !searchText.isEmpty {  // Will check if something is inputted and if not it ignore
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let recipeResultsVC = storyboard.instantiateViewController(withIdentifier: "recipeResults") as! MealResultsViewController
            
            recipeResultsVC.mealName = searchText
            
            navigationController?.pushViewController(recipeResultsVC, animated: true)
        }
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
