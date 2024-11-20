//
//  ViewController.swift
//  Beck_Exam02
//
//  Created by Kylie beck on 11/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customerNameOL: UITextField!
    
    @IBOutlet weak var paymentHistoryOL: UITextField!
    
    @IBOutlet weak var creditUtilizationOL: UITextField!
    @IBOutlet weak var computeButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    var name = ""
    var paymentHistoryVar = 0.0
    var credit = 0.0
    var creditScoreVar = 0.0
    var result = ""
    var rec = ""
    var image = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //computeButton.isEnabled = false;
        //var nameEntered = customerNameOL.text!;
        //var paymentEntered = paymentHistoryOL.text!;
        //var creditEntered = creditUtilizationOL.text!;
        //resetButton.isEnabled = false;
        //if (nameEntered.isEmpty) && (paymentEntered.isEmpty) && (creditEntered.isEmpty){
           // computeButton.isEnabled = false;
            //resetButton.isEnabled = false;
        //}
        //else{
           // computeButton.isEnabled = true;
            //resetButton.isEnabled = true;
        //}
    
    }

    @IBAction func computeButtonClicked(_ sender: Any) {
        resetButton.isEnabled = true;
        computeButton.isEnabled = true;
        name = customerNameOL.text!
        paymentHistoryVar = Double (paymentHistoryOL.text!)!
        credit = Double (creditUtilizationOL.text!)!
        creditScoreVar = (300+(0.583*paymentHistoryVar)+(0.5*credit))
        if (creditScoreVar >= 800) && (creditScoreVar <= 850){
            result = "Excellent"
            rec = "Individuals in this range are considered to be at the lowest risk. They have a history of making payments on time and keeping credit utilization low. They’re eligible for the best interest rates and credit products 🏦 🏦✅."
            image = "800-850"
        }
        else if (creditScoreVar >= 740) && (creditScoreVar <= 799){
            result = "Very Good"
            rec = "Still a very desirable range with minimal risk. Borrowers with scores in this category are likely to qualify for favorable rates and terms 💸."
            image = "740-799"
        }
        else if (creditScoreVar >= 670) && (creditScoreVar <= 739){
            result = "Good"
            rec = "This is considered an acceptable credit score range. People with scores in this range are generally approved for credit but may not receive the lowest interest rates 💳."
            image = "670-739"
            
        }
        else if (creditScoreVar >= 580) && (creditScoreVar <= 669){
            result = "Fair"
            rec = "This range indicates higher credit risk. People with scores in this range may have had missed payments or higher credit utilization. They may qualify for credit, but it usually comes with higher interest rates or less favorable terms%  ⤴️⤴️⚠️🟡."
            image = "580-669"
        }
        else if (creditScoreVar >= 300) && (creditScoreVar <= 579){
            result = "Poor"
            rec = "The lowest category, indicating significant credit risk. Borrowers in this range may have a history of missed payments, high utilization, or other negative factors. They often find it challenging to obtain credit and may be subject to very high interest rates if they do qualify %⤴⤴⤴️🛑⚠️⚠️."
            image = "300-579"
           
        }
        else {
            result = "Invalid❗️. Please enter the valus for Payment histroy and Credit utilization between 0-550 and 0-458 respectively"
            
        }
    }
    
    @IBAction func resetButtonClicked(_ sender: Any) {
        resetButton.isEnabled = true;
        customerNameOL.text = ""
        paymentHistoryOL.text = ""
        creditUtilizationOL.text = ""
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        let transition = segue.identifier
        
        if(transition == "resultSegue"){
            let destination = segue.destination
            as! resultViewController
            destination.name = name
            destination.paymentHistoryVar = paymentHistoryVar
            destination.credit = credit
            destination.creditScoreVar = creditScoreVar
            destination.result = result
            destination.rec = rec
            destination.image = image
        }
    }
}


