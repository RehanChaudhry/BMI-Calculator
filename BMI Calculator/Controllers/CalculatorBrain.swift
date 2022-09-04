//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rehan Chaudhry on 09/07/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func pickHeightSliderValue(sliderValue: Float) -> String {
        
        return String(format: "%.1f", sliderValue) + "m"
    }
    
    func pickWeightSliderValue(sliderValue: Float) -> String{
    
        return String(format: "%.0f", sliderValue) + "Kg"
    
    }
    
    mutating func calculateBmi(weight: Float, height: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(bmi: bmiValue, advice: "Thora Kha Le Kuch Ja Ke!!", color: UIColor.orange)
        }
        else if bmiValue <= 24.9 {
            
            bmi = BMI(bmi: bmiValue, advice: "I Love You Meri Jaan <3 Very Good!!", color: UIColor.cyan)
            
        }
        
        else {
            
            bmi = BMI(bmi: bmiValue, advice: "Kam Khaa Moti!!!", color: UIColor.red)
        }
        
    }
    
    func getBmi() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.bmi ?? 0.0)
        
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.clear
    }
    
}
