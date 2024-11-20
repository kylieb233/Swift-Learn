//
//  ViewController.swift
//  bmiApp
//
//  Created by Kylie beck on 10/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHeightOL: UITextField!
    
    
    @IBOutlet weak var enterWeightOL: UITextField!
    
    var height = 0.0
    var weight = 0.0
    var bmi = 0.0
    var image = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func calculateButtonClicked(_ sender: UIButton) {
        height = Double(enterHeightOL.text!)!
        var inches = height*12
        weight = Double(enterWeightOL.text!)!
        bmi = (703 * weight)/(inches*inches)
        
        if(bmi<18.5) {
            image = "underweight"
            result = "Underweight"
        }
        else if (bmi<25){
            image = "normal"
            result = "Normal"
        }
        else if (bmi<30){
            image = "overweight"
            result = "Overweight"
        }
        else {
            image = "obese"
            result = "Obese"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let transition = segue.identifier
        
        if(transition == "nextSegue"){
            let destination = segue.destination
            as! resultController
            destination.image = image
           // destination.weight = weight
           // destination.height = height
            destination.message = result
            destination.bmiValue = bmi
        }
    }
}

