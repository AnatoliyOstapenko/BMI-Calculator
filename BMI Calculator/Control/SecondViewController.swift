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
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        recalculateButton.layer.borderColor = UIColor.white.cgColor
        recalculateButton.layer.borderWidth = 2
        bmiLabel.text = bmiResult
        suggestionLabel.text = currentSuggestion
        self.view.backgroundColor = UIColor.red
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        // segue sends back to ViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

}
