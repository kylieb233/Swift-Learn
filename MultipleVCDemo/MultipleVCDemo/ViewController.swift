//
//  ViewController.swift
//  MultipleVCDemo
//
//  Created by Kylie beck on 10/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOL: UITextField!
    
    
    @IBOutlet weak var discountPercOL: UITextField!
    
    
    
    var amount = 0.0
    var discountPerc = 0.0
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func computeBTNClick(_ sender: UIButton) {
        
        //read
        amount = Double(amountOL.text!)!
        discountPerc = Double(discountPercOL.text!)!
        priceAfterDiscount = amount - amount*discountPerc/100
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //create transition
        var transition = segue.identifier
        
        //HAVE TO NAME IT THE SAME AS THE SEGUE
        if transition == "resultSegue"{
            //we need to create a destination
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOL.text!
            destination.discount = discountPercOL.text!
            destination.discountedprice = String(priceAfterDiscount)
        }
    }
    
}

