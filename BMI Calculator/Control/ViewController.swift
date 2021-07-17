//
//  ViewController.swift
//  BMI Calculator
//
//  Created by MacBook on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    var choosenHight: Float = 0
    var choosenWeight: Float = 0
    
    
    
    
    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set border and white collor of button CALCULATE
        calculateButton.layer.borderColor = UIColor.white.cgColor
        calculateButton.layer.borderWidth = 2
        
    }

    @IBAction func hightSliderPressed(_ sender: UISlider) {
        
        // Transmit choosen hight when slider used by user
        choosenHight = sender.value
        // changing Float to String format
        let height = String(format: "%.0f", sender.value)
        heightLabel.text = "\(height) cm"
    
    }
    
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        // Transmit choosen weight when slider used by user
        choosenWeight = sender.value
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
        
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
        // triggered function of BMI calculation while transfering choosen weight and height.
        calculatorBrain.calculatorBMI(choosenWeight, choosenHight)
        
        // triggered function of suggestion and color
        calculatorBrain.foodSuggestion()
        
        // segue to show a next related "SecondViewController" on screen
        self.performSegue(withIdentifier: "goToSVC", sender: self)
        
       
      
        
    }
    // this finction is needed to transmited information from ViewController to SecondViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // check if I choose the right path (from ViewController to SecondViewController)
        
        if segue.identifier == "goToSVC" {
            
            let destinationSVC = segue.destination as! SecondViewController
            //transmition of information to variable bmiResult in SecondViewController
            destinationSVC.bmiResult = calculatorBrain.getBMI()
            
            //transmition of information to variable currentSuggestion in SecondViewController
            destinationSVC.currentSuggestion = calculatorBrain.suggestion
            
        }
       
        
    }
    
}

