//
//  ViewController.swift
//  ProductApp
//
//  Created by Beck,Kylie J on 9/5/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var inputIO1: UITextField!
    
    @IBOutlet weak var inputIO2: UITextField!
    
    
  
    @IBOutlet weak var outputIO: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        var num1 = Int (inputIO1.text!)
        var num2 = Int (inputIO2.text!)
  
        
        var product = num1! * num2!
        outputIO.text = "\(product)"
    }
    
}

