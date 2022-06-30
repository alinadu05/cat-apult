//
//  CategoriesViewController.swift
//  cat-apult
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    var countryDictionary : [String:String] = ["":""]
    
    var category = ""
    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func categoryPressed(_ sender: UIButton) {
        category = sender.titleLabel!.text ?? ""
        performSegue(withIdentifier: "toInfo", sender: self)
        if category == "Customs"{
            name = "customs"
        }
        else if category == "Safety"{
            name = "safety"
        }
        else if category == "Eco-Friendly Options"{
            name = "eco"
        }
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInfo"{
            let destinationVC = segue.destination as? InfoViewController
            destinationVC?.info = countryDictionary[name] ?? "didn't work"
            destinationVC?.category2 = category
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
