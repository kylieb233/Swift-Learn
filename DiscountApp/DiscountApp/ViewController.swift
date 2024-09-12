//
//  ViewController.swift
//  DiscountApp
//
//  Created by Beck,Kylie J on 9/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var displayOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        
        var amount =  Double (inputOL.text!)
        if(amount! > 0) && (amount! < 50){
            var newAmount = (amount! * 10/100)
            
            displayOL.image = UIImage(named: "kittyboy")
            
            outputOL.text = ("You recieved 10% discount on the amount \(amount!) .The discount value is \(newAmount)")
            
        }else if (amount! > 51) && (amount! < 100){
            var newAmount = (amount! * 20/100)
            
            displayOL.image = UIImage(named: "shrimpKitty")
            
            outputOL.text = ("You recieved 20% discount on the amount \(amount!) .The discount value is \(newAmount)")

        }
        else {
            var newAmount = (amount! * 30/100)
            
            displayOL.image = UIImage(named: "blackcat")
            
            outputOL.text = (("You recieved 30% discount on the amount \(amount!) .The discount value is \(newAmount)"))
        }
        }
        
    }


