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
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.isHidden = false
    }
    
    @IBAction func submitName(_ sender: UIButton)
    {
        catText.isHidden = false
        
        if let usersName = insertName.text
        {
            catText.text = "Hello \(usersName)! Welcome to CATAPULT! Ready for your next adventure?"
        }
        nextButton.isHidden = false
        
    }
    
    @IBAction func nextText(_ sender: Any)
    {
        catText.text = "Click the globe above to begin your journey!"
        map.isHidden = false
        nextButton.isHidden = true
    }
    
    
}

