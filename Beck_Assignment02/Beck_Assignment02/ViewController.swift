//
//  ViewController.swift
//  Beck_Assignment02
//
//  Created by Beck,Kylie J on 9/12/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameOL: UITextField!
    
    @IBOutlet weak var billOL: UITextField!
    
    @IBOutlet weak var tipOL: UITextField!
    
    @IBOutlet weak var dateOL: UIDatePicker!
    
    @IBOutlet weak var nameBillOutlet: UILabel!
    
    @IBOutlet weak var billAmountOutlet: UILabel!
    
    @IBOutlet weak var tipPercentageOutlet: UILabel!
    
    @IBOutlet weak var dateOutlet: UILabel!
    
    @IBOutlet weak var totalBillAmountOL: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBTN(_ sender: Any) {
        
        
        //bill total
        var doubleBillCount = Double (billOL.text!)
        if(doubleBillCount! > 500){
            var newBillAmountVariable = (doubleBillCount! - 50)
            billAmountOutlet.text = ("Bill Amount: $\(String(describing: newBillAmountVariable))")
        }
        else{
            billAmountOutlet.text = ("Bill Amount: $\(String(describing: doubleBillCount!))")
        }
        //date
        var dateOutputVariable = dateOL.date
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy hh:mm"
        dateFormatter.timeZone = TimeZone(identifier: "America/Chicago")
        dateOutlet.text = ((dateFormatter.string(from: dateOutputVariable )))
        
        //name
        var nameOutputVar = String (nameOL.text!)
        nameBillOutlet.text = ("Name: \(nameOutputVar)")
        
        //tip
        var tipAmountOutputVariable = Double (tipOL.text!)
        var tipInDollarVariable = (doubleBillCount! * tipAmountOutputVariable!/100)
        tipPercentageOutlet.text = ("Tip Amount: $\( String(describing: tipInDollarVariable))")
        
        var totalAmountVariable = Double (tipInDollarVariable + doubleBillCount!)
        totalBillAmountOL.text = ("Total amount = $\(totalAmountVariable)")
    }
    
    
    
    @IBAction func resetOL(_ sender: Any) {
        nameOL.text = ""
        billOL.text = ""
        tipOL.text = ""
        nameBillOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        dateOutlet.text = ""
        totalBillAmountOL.text = ""
    }
}

