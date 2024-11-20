//
//  resultController.swift
//  bmiApp
//
//  Created by Kylie beck on 10/29/24.
//

import UIKit

class resultController: UIViewController {
    
    
    
    @IBOutlet weak var bmiOutlet: UILabel!
    
    
    @IBOutlet weak var messageOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    

    var bmiValue = 0.0
    var message = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiOutlet.text = String(format:"BMI: %.2f", bmiValue)
        messageOL.text = "Resut: \(message)"
        imageViewOL.image = UIImage(named: image);
        
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
