//
//  ResultViewController.swift
//  MultipleVCDemo
//
//  Created by Kylie beck on 10/24/24.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var enteredAmountOL: UILabel!
    
    @IBOutlet weak var enteredDiscountOL: UILabel!
    
    @IBOutlet weak var priceAfterDiscountOL: UILabel!
    
    var amount = ""
    var discount = ""
    var discountedprice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        enteredAmountOL.text = enteredAmountOL.text! + " $" + amount
        
        enteredDiscountOL.text! += discount
        
        priceAfterDiscountOL.text! += discountedprice
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
