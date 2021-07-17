//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MacBook on 17.07.2021.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0
    var currentBMI = "100"
    var suggestion: String?
    var color = "white"

    // function of BMI calculation
    mutating func calculatorBMI(_ currentWeight: Float, _ currentHeight: Float) {
        // formula bmi calculation
        bmi = currentWeight * 10000 / (currentHeight * currentHeight)
       
    }
    
    mutating func getBMI() -> String {
        currentBMI = String(format: "%.0f", bmi)
        return currentBMI
    }
    
    // function of suggestion loop
    mutating func foodSuggestion() {
        switch bmi {
        case 0...20:
            suggestion = "EAT MORE FOOD"
            color = "yelow"
        case 21...30:
            suggestion = "YOU ARE IN A GOOD SHAPE"
            color = "green"
        default:
            suggestion = "EAT LESS FOOD"
            color = "red"
        }
    }

    
}
