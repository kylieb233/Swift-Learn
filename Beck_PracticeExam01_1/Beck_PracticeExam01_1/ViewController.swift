//
//  ViewController.swift
//  Beck_PracticeExam01_1
//
//  Created by Kylie beck on 9/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightInchesInput: UITextField!
    
    @IBOutlet weak var heightFeetInput: UITextField!
    
    @IBOutlet weak var paitentWeightInput: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func submitBtn(_ sender: Any) {
        
        var inches = Double (heightInchesInput.text!)
        var feet = Double (heightFeetInput.text!)
        var totalInches = ((feet! * 12) + inches!)
        var weightLBS = Double (paitentWeightInput.text!)
        var newWeightAgain = weightLBS!/totalInches
        var BMI = Double (703 * newWeightAgain)
        
        if (BMI < 18.5 || BMI == 18.5) {
            outputLabel2.text = ("This is considered Underweight")
        }
        else if (BMI > 18.6 || BMI < 24.9 ){
            outputLabel2.text = ("This is considered Normal")
        }
        else if (BMI > 25 || BMI < 29.9) {
            outputLabel2.text = ("This is considered Overweight")
        }
        else {
            outputLabel2.text = ("This is considered obesity")
        }
            
        outputLabel.text = ("Your Body Mass Index Is \(BMI). This is considered")
        
        
        
        
    }
    
}

