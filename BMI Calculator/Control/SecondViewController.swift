//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by MacBook on 16.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiResult: String?
    var currentSuggestion: String?
    var currentColor: UIColor?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set border and white collor of button RECALCULATE

        recalculateButton.layer.borderColor = UIColor.white.cgColor
        recalculateButton.layer.borderWidth = 2
        
        // fetched BMI result
        bmiLabel.text = bmiResult
        // fetched suggestion
        suggestionLabel.text = currentSuggestion
        // fetch color for background view
        self.view.backgroundColor = currentColor
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        // segue sends back to ViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

}
