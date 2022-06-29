//
//  MapViewController.swift
//  cat-apult
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class MapViewController: UIViewController {
    
    //country info
    var count = 0
    var countryList = [
        ["name": "Hawaii",
        "environmental": "",
        "customs":"",
        "safety":"",
        "eco":""],
        ["name": "Texas",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "Brazil",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "France",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "Egypt",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "China",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "Japan",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        ["name": "Australia",
         "environmental": "",
         "customs": "",
         "safety": "",
         "eco": ""
        ]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func countryPressed(_ sender: UIButton) {
        let compare = sender.titleLabel!.text
        if compare == "Hawaii"{
            count = 0
        }
        else if compare == "Texas"{
            count = 1
        }
        else if compare == "Brazil"{
            count = 2
        }
        else if compare == "France"{
            count = 3
        }
        else if compare == "Egypt"{
            count = 4
        }
        else if compare == "China"{
            count = 5
        }
        else if compare == "Japan"{
            count = 6
        }
        else if compare == "Australia"{
            count = 7
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCategories"{
            let destinationVC = segue.destination as? CategoriesViewController
            destinationVC?.countryDictionary = countryList[count]
        }
    }
    

}
