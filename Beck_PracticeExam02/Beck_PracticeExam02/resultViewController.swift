//
//  resultViewController.swift
//  Beck_PracticeExam02
//
//  Created by Kylie beck on 11/5/24.
//

import UIKit


class resultViewController: UIViewController {
    
    @IBOutlet weak var loanTypeFill: UILabel!
    
    @IBOutlet weak var loanAmountFill: UILabel!
    
    @IBOutlet weak var interestRateFill: UILabel!
    
    @IBOutlet weak var monthlyEMIFill: UILabel!
    
    @IBOutlet weak var imageViewDisplay: UIImageView!
    
    var loanType = ""
    var loanAmount = 0.00
    var interestRate = 0.00
    var monthlyEMI = 0.00
    var imageView = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loanTypeFill.text = "Loan type: \(loanType)"
        loanAmountFill.text = "Loan amount: \(loanAmount)"
        interestRateFill.text = "Interest rate: \(interestRate)%"
        monthlyEMIFill.text = "Monthly EMI: \(monthlyEMI)"
        imageViewDisplay.image = UIImage(named: imageView)

        
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
