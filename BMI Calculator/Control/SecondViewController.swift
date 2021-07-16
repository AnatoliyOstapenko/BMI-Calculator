//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by MacBook on 16.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiResult = "0.0"
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        recalculateButton.layer.borderColor = UIColor.white.cgColor
        recalculateButton.layer.borderWidth = 2
        bmiLabel.text = bmiResult
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        
        
    }
    
    

}
