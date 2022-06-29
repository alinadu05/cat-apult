//
//  ViewController.swift
//  cat-apult
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var insertName: UITextField!
    @IBOutlet weak var catText: UILabel!
    @IBOutlet weak var map: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitName(_ sender: UIButton)
    {
        catText.isHidden = false
        
        if let usersName = insertName.text
        {
            catText.text = "Hello \(usersName)! Welcome to CATAPULT! Ready for your next adventure?"
        }
    }
    
    @IBAction func nextText(_ sender: Any)
    {
        catText.text = "Click the globe above to begin your journey!"
        map.isHidden = false
    }
    
    
}

