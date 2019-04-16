//
//  RecipeListViewController.swift
//  practise-project
//
//  Created by Novoda on 02/04/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class IngredientsService {
    
    func getIngredients(onSuccess: @escaping ([String]) -> Void, onError: @escaping (Error) -> Void) {
        let url = URL(string: "http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let response = try JSONDecoder().decode(RecipeResponse.self, from: data)
                guard let firstRecipe = response.recipes.first else { return }
                
                let firstIngredients = firstRecipe.ingredients
                
                let array = firstIngredients.components(separatedBy: ", ")
                DispatchQueue.main.async {
                    onSuccess(array)
                }
                
            } catch let jsonErr {
                print("Error deserialisating json:", jsonErr)
                onError(jsonErr)
            }
            
        }.resume()
    }
}

class ResultsViewController: UIViewController {
    
    @IBAction func enter(_ sender: Any) {
        performSegue(withIdentifier: "resultsTOfinal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var finalRecipeViewConroller = segue.destination as! FinalRecipeViewController
        finalRecipeViewConroller.ingredients = ingredientsList
    }
    
    let ingredientsService = IngredientsService()
    var ingredientsList = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientsService.getIngredients(onSuccess: { (ingredients) in
            //print(ingredients)
            
            self.ingredientsList  = ingredients.joined(separator: ", ")
            print("this is what is in the list '\(self.ingredientsList)'")
            
        }) { (error) in
            print("Could not parse ingredients because \(error)")
        }
        
    }

}


