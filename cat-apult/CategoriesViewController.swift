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

    @IBOutlet weak var countryNameLabel: UILabel!
    
    @IBOutlet weak var countryImageView: UIImageView!
    
    @IBOutlet weak var countryCatImageView: UIImageView!
    
    @IBOutlet weak var countryIntro: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryNameLabel.text = countryDictionary["name"]
        countryImageView.image = UIImage(named:countryDictionary["image"]!)
        countryCatImageView.image = UIImage(named:countryDictionary["catImage"]!)
        countryIntro.text = countryDictionary["intro"]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func categoryPressed(_ sender: UIButton) {
        category = sender.titleLabel!.text ?? ""
        if category == "Customs"{
            name = "customs"
        }
        else if category == "Safety"{
            name = "safety"
        }
        else if category == "Eco-Friendly Options"{
            name = "eco"
        }
        let destination2VC = InfoViewController()
        let segue = UIStoryboardSegue(identifier: "toInfo", source: self, destination: destination2VC)
        print("preforming segue")
        prepare(for: segue, sender: self)
        performSegue(withIdentifier: "toInfo", sender: self)

    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare function")
        if segue.identifier == "toInfo"{
            let destinationVC = segue.destination as? InfoViewController
            destinationVC?.info = countryDictionary[name] ?? "didn't work"
            destinationVC?.category2 = category
        }

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
