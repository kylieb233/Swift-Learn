//
//  ViewController.swift
//  BeckHelloApp
//
//  Created by Beck,Kylie J on 9/3/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the entered name and assign it to a var.
        var  name = inputOL.text!
        
        //Interpolatethe name with "Hello, name!" and assign it to output var
        print("Hello, \(name)!")
        
        outputOL.text = "Hello, \(name)!"
        
        
        
    }
    
}

