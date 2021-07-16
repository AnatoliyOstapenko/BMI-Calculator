//
//  ViewController.swift
//  BMI Calculator
//
//  Created by MacBook on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentHeight: Float = 0
    var currentWeight: Float = 0
    var bmi: Float = 0
    
    
    
    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.borderColor = UIColor.white.cgColor
        calculateButton.layer.borderWidth = 2
        
    }

    @IBAction func hightSliderPressed(_ sender: UISlider) {
        
        
        currentHeight = sender.value
        let height = String(format: "%.0f", sender.value)
        heightLabel.text = "\(height) cm"
    
    }
    
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        
        currentWeight = sender.value
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
        
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
        
        bmi = currentWeight * 10000 / (currentHeight * currentHeight)
        print(currentWeight)
        print(currentHeight)
        print(bmi)
        
        
      
        
    }
    
}

