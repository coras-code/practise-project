//
//  LeftoverViewController.swift
//  practise-project
//
//  Created by Novoda on 28/03/2019.
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

class LeftoverViewController: UIViewController {

    @IBOutlet var ingredientLabel: UILabel!
    let ingredientsService = IngredientsService()
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientLabel.numberOfLines = 0
        ingredientsService.getIngredients(onSuccess: { (ingredients) in
            print(ingredients)

            self.ingredientLabel.text  = ingredients.joined(separator: ", ")
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
