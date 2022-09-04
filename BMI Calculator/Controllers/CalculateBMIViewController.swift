//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBMIViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    var sliderValue: Float = 0.0
    var bmi: BMI?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        sliderValue = sender.value
        heightLabel.text = calculatorBrain.pickHeightSliderValue(sliderValue: sliderValue)
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        sliderValue = sender.value
        weightLabel.text = calculatorBrain.pickWeightSliderValue(sliderValue: sliderValue)
        
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
          calculatorBrain.calculateBmi(weight: weight, height: height)
        
        performSegue(withIdentifier: "resultViewController", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "resultViewController" {
            
            let showResultsVC = segue.destination as! ShowResultsViewController
            
            showResultsVC.bmi = calculatorBrain.getBmi()
            showResultsVC.advice = calculatorBrain.getAdvice()
            showResultsVC.color = calculatorBrain.getColor()
        }
        
    }
    
}

