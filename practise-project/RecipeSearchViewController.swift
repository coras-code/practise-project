//
//  SearchViewController.swift
//  practise-project
//
//  Created by Novoda on 04/01/2019.
//  Copyright © 2019 cjm. All rights reserved.
//

import UIKit

var recipeName = ""

class RecipeSearchViewController: UIViewController {

    @IBOutlet weak var outlet: UITextField!
    
    @IBAction func action(_ sender: Any) {
        
        if (outlet.text != "") {
            
            recipeName = outlet.text!
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    //will check if something is inputted and if not it will crash
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
