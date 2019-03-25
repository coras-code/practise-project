//
//  ViewController.swift
//  practise-project
//
//  Created by Cora-Jane on 07/12/2018.
//  Copyright © 2018 cjm. All rights reserved.
//

import UIKit

struct Results: Codable {
    let results: [Recipe]
}

struct Recipe: Codable {
    let title: String
    let href: String // was an URL but i changed it
    let ingredients: String
    let thumbnail: String
    
    //Old method to parse Json-creating a dictionary from the API
    //Access the dictionary, cast it and with a defualt value
    init(jason: [String: Any]) {
            title = jason["title"] as? String ?? ""
            href = jason["href"] as? String ?? ""
            ingredients = jason["ingredients"] as? String ?? ""
            thumbnail = jason["thumbnail"] as? String ?? ""
    }
}

class HomeViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            
        
            let url = URL(string: "http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3")!

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                //unwrapping data optional
                guard let data = data else { return }
              
//                //print the data from the API as a string
//                let dataAsString = String(data: data, encoding: .utf8)
//                print(dataAsString)
                
                //Old method to parse Json
                do {
                    // cast it to string any for the next part
                    guard let json = try
                        JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }//test print(json)
                    
                    let recipe = Recipe(jason: json)
                    print(recipe.title)
                    
                } catch let jsonErr {
                    print("Error with serialising the Json:", jsonErr)
                }
                
                }.resume()
            
            
            
            

    }
    
    }
            
//
//            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//                guard let data = data else {
//                    return
//                }
//
//                let jasonDecoder =  JSONDecoder()
//                let result = try! jasonDecoder.decode(Results.self, from: data)
//               print(result)
//
//                }
//
//                task.resume()
//        }
//
//}
//}
