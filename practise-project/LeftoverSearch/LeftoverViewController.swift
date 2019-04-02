//
//  LeftoverViewController.swift
//  practise-project
//
//  Created by Novoda on 28/03/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit



class LeftoverViewController: UIViewController {

    @IBOutlet var ingredientLabel: UILabel?
    var ingredientsList = "" {
        didSet
        {self.ingredientLabel?.text = ingredientsList}
    }
    let ingredientsService = IngredientsService()
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientLabel?.numberOfLines = 0
        ingredientsService.getIngredients(onSuccess: { (ingredients) in
            print(ingredients)

            self.ingredientsList  = ingredients.joined(separator: ", ")
        }) { (error) in
            print("Could not parse ingredients because \(error)")
        }
        // Do any additional setup after loading the view.
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
