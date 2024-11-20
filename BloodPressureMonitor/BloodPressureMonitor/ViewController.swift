//
//  ViewController.swift
//  BloodPressureMonitor
//
//  Created by Kylie beck on 10/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var patientOL: UITextField!
    
    @IBOutlet weak var systolicOL: UITextField!
    
    @IBOutlet weak var diastolicOL: UITextField!
    
    var patientID = ""
    var systolicNumber = 0.0
    var diastolicNumber = 0.0
    var BP = ""
    var meanBP = 0.0
    var result = ""
    var healthTipAdvice = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func checkBloodPressureClicked(_ sender: Any) {
        patientID = patientOL.text!
        systolicNumber = Double(systolicOL.text!)!
        diastolicNumber = Double(diastolicOL.text!)!
        BP = "\(systolicNumber)/\(diastolicNumber)"
        
        meanBP = (0.667*diastolicNumber) + (0.334 * systolicNumber)
        
        if(meanBP<60) {
            image = "stroke"
            result = "Stroke or Internal Bleeding"
            healthTipAdvice = "Seek immediate medical attention 👩🏻‍⚕️"
        }
        else if(meanBP >= 60) && (meanBP <= 69){
            image = "hypotension"
            result = "Hypotension"
            healthTipAdvice = "Stay Hydrated 💧"
        }
        else if(meanBP >= 70) && (meanBP <= 99){
            image = "healthy"
            result = "Healthy"
            healthTipAdvice = "You are doing great 👍🏻"
        }
        else if(meanBP >= 100) && (meanBP <= 106){
            image = "elevated"
            result = "Elevated"
            healthTipAdvice = "Make sure to maintain workout 🏋🏻"
        }
        else{
            image = "hypertension"
            result = "Hypertension"
            healthTipAdvice = "Consult doctor for medication tab 💊"
        }
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let transition = segue.identifier
        
        if(transition == "nextSegue"){
            let destination = segue.destination
            as! ResultViewController
            destination.image = image
            destination.patientID = patientID
            destination.healthTipAdvice = healthTipAdvice
            destination.result = result
            destination.meanBP = meanBP
            destination.BP = BP
        }
        
    }
}

