//
//  resultViewController.swift
//  Beck_Exam02
//
//  Created by Kylie beck on 11/7/24.
//

import UIKit

class resultViewController: UIViewController {
    
    
    @IBOutlet weak var customerName: UILabel!
    
    @IBOutlet weak var paymentHistory: UILabel!
    
    @IBOutlet weak var creditUtilization: UILabel!
    
    @IBOutlet weak var creditScore: UILabel!
    
    @IBOutlet weak var resultFill: UILabel!
    
    @IBOutlet weak var reccFill: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var name = ""
    var paymentHistoryVar = 0.0
    var credit = 0.0
    var creditScoreVar = 0.0
    var result = ""
    var rec = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customerName.text = "Customer Name: \(name)"
        imageView.image = UIImage(named: image)
        paymentHistory.text = "Payment History Rating: \(paymentHistoryVar)"
        creditUtilization.text = "Credit Utilization Score: \(credit)"
        creditScore.text = "Credit Score: \(creditScoreVar)"
        resultFill.text = "Result: \(result)"
        reccFill.text = "Credit Scope: \(rec)"
        
        var width = imageView.frame.width
        width += 40
        
        var height = imageView.frame.height
        height += 40
        
        var x = imageView.frame.origin.x-30
        var y = imageView.frame.origin.y-30
        
        var largeFrame = CGRect(x: x, y: y,  width: width, height: height)
        
        UIView.animate(withDuration: 2, delay: 5, usingSpringWithDamping: 0.5, initialSpringVelocity: 40, animations: {
            self.imageView.frame = largeFrame
            
        })
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
