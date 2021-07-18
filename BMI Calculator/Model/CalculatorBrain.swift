//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MacBook on 17.07.2021.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    var currentBMI = "100"
    var suggestion: String?
    var color: UIColor?


    // function of BMI calculation
    mutating func calculatorBMI(_ currentWeight: Float, _ currentHeight: Float) {
        // formula bmi calculation
        let bmiValue = currentWeight * 10000 / (currentHeight * currentHeight)
        
        switch bmiValue {
        case 0...19:
            bmi = BMI(value: bmiValue, suggestion: "EAT MORE FOOD", color: .purple)
        case 20...25:
            bmi = BMI(value: bmiValue, suggestion: "YOU ARE IN A GOOD SHAPE", color: .cyan)
        default:
            bmi = BMI(value: bmiValue, suggestion: "EAT LESS FOOD", color: .magenta)
            
        }
        
    }
    // to change struct Float to String and dispatch it to ViewController
    mutating func getBMI() -> String {
        
        // unwraping
        currentBMI = String(format: "%.0f", bmi?.value ?? 0.0)
        return currentBMI
    }
    
    // to dispatch current suggestion to ViewController
    func getSuggestion() -> String {
        return bmi?.suggestion ?? "error"
    }
    // to dispatch current color to ViewController
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
    
    
}
