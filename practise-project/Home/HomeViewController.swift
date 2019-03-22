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
            
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else {
                    return
                }
                
                let jasonDecoder =  JSONDecoder()
                let result = try! jasonDecoder.decode(Results.self, from: data)
                print(result)
            
                }
            
                 task.resume()
    }
    
}
