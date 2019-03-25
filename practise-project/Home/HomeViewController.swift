//
//  ViewController.swift
//  practise-project
//
//  Created by Cora-Jane on 07/12/2018.
//  Copyright © 2018 cjm. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            
        
            let url = URL(string: "http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3")!

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                //unwrapping data optional
                guard let data = data else { return }
              
//                //print the data from the Outcome as a string
//                let dataAsString = String(data: data, encoding: .utf8)
//                print(dataAsString)
                
                var outcome: Outcome?

                do {
                    outcome = try JSONDecoder().decode(Outcome.self, from: data)
                    //print(outcome.title, outcome.href, outcome.version, outcome.results)
                
                } catch let jsonErr {
                    print("Error Serialisating json:", jsonErr)
                }
                
                
                guard let firstRecipe = outcome?.recipes.first else { return }

                // let recipe1 = decodedOutcome.results.first?
                let firstIngredients = firstRecipe.ingredients
                
                let array = firstIngredients.components(separatedBy: ", ")
                print(array)
                
                    
                
                }.resume()
    }
}
