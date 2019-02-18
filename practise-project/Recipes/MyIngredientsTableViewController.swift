//
//  File.swift
//  practise-project
//
//  Created by Novoda on 15/02/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

class MyIngredientsTableViewController: UITableViewController {
    
    // MARK :- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientItem", for: indexPath)

        return cell
        
    }
//

//    // MARK:- Table View Data Source
//    override func tableView(_ tableView: UITableView,
//                            numberOfRowsInSection section: Int) -> Int {
//        return 5 }
//    override func tableView(_ tableView: UITableView,
//                            cellForRowAt indexPath: IndexPath) ->
//        UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientItem", for: indexPath)
//                return cell }
//
}

