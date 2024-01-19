//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Nikita Shirobokov on 19.01.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    
    var billValue: Double?;
    var peopleCount: Int?;
    var tip: String?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.1f", billValue!);
        settingsLabel.text = "Split between \(peopleCount!) people, with \(tip!) tip."
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
