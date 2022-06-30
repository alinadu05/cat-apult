//
//  InfoViewController.swift
//  cat-apult
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class InfoViewController: UIViewController {
    
    var info = ""
    var category2 = ""

    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var infoText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleText.text = category2
        infoText.text = info
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
