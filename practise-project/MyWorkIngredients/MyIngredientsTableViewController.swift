//
//  File.swift
//  practise-project
//
//  Created by Novoda on 15/02/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class MyIngredientsTableViewController: UITableViewController {
    var ingredients = [ChecklistIngredient]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let ingredient1 = ChecklistIngredient()
        ingredient1.text = "Almond Milk"
        ingredients.append(ingredient1)
        
        let ingredient2 = ChecklistIngredient()
        ingredient2.text = "Flour"
        ingredient2.checked = true
        ingredients.append(ingredient2)
        
        let ingredient3 = ChecklistIngredient()
        ingredient3.text = "Baking Soda"
        ingredients.append(ingredient3)
        
        let ingredient4 = ChecklistIngredient()
        ingredient4.text = "Oats"
        ingredient4.checked = true
        ingredients.append(ingredient4)
        
        let ingredient5 = ChecklistIngredient()
        ingredient5.text = "Vanilla Extract"
        ingredients.append(ingredient5)
    }
    
   //matching the view with the code
    func configureCheckmark(for cell: UITableViewCell,
                            with ingredient: ChecklistIngredient) {
        if ingredient.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    //maybe could name the parameter differently
    func configureText(for cell: UITableViewCell,
                       with ingredient: ChecklistIngredient) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = ingredient.text
    }
    
    // MARK :- Table View Data Source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
                                                withIdentifier: "IngredientItem",
                                                for: indexPath)
        
        let ingredient = ingredients[indexPath.row]
        
        configureText(for: cell, with: ingredient)
        configureCheckmark(for: cell, with: ingredient)
        return cell
        
    }
    
    // MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        
  
        if let cell = tableView.cellForRow(at: indexPath) {
            let ingredient = ingredients[indexPath.row]
            ingredient.toggleChecked()
            configureCheckmark(for: cell, with: ingredient)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

