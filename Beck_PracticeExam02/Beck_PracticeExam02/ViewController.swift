//
//  ViewController.swift
//  Beck_PracticeExam02
//
//  Created by Kylie beck on 11/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loanTypeOL: UITextField!
    
    @IBOutlet weak var loanAmountOL: UITextField!
    
    @IBOutlet weak var interestRateOL: UITextField!
    
    @IBOutlet weak var termOL: UITextField!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlyEMIPayment = 0.00
    var loanType = ""
    var imageView = ""
    var loanAmount = 0.00
    var interestRate = 0.00
    var monthlyEMI = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateButton.isEnabled = false;
        resetButton.isEnabled = false;
       
    }

    @IBAction func calculateButtonClicked(_ sender: Any) {

        loanType = loanTypeOL.text!
        var term = Double (termOL.text!)
        totalMonths = (term! * 12)
        interestRate = Double (interestRateOL.text!)!
        monthlyInterestRate = (interestRate/12)/100
        loanAmount = Double (loanAmountOL.text!)!
        monthlyEMIPayment = loanAmount * (monthlyInterestRate * pow(1 + monthlyInterestRate,totalMonths))/(pow(1 + monthlyInterestRate,totalMonths)-1)
        
        if(loanType == "Car") && (loanAmount == 10000) && (interestRate == 8.37) && (term == 10) {
            imageView = "Car"
            
        }
        else if (loanType == "Personal") && (loanAmount == 23000) && (interestRate == 16) && (term == 7) {
            imageView = "Personal"
        }
        else {
            imageView = "Home"
        }

    }
    
    
    
    @IBAction func resetButtonClicked(_ sender: Any) {
        loanTypeOL.text = ""
        loanAmountOL.text = ""
        interestRateOL.text = ""
        termOL.text = ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "nextSegue"){
            let destination = segue.destination
            as! resultViewController
            destination.loanType = loanType
            destination.monthlyEMI = monthlyEMIPayment
            destination.interestRate = interestRate
            destination.loanAmount = loanAmount
            destination.imageView = imageView
        }
    }
    
}

