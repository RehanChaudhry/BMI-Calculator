//
//  ShowResultsViewController.swift
//  BMI Calculator
//
//  Created by Rehan Chaudhry on 07/07/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ShowResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        resultLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
}
