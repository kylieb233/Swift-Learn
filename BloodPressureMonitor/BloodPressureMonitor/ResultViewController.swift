//
//  ResultViewController.swift
//  BloodPressureMonitor
//
//  Created by Kylie beck on 10/31/24.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var patientIDFill: UILabel!
    
    @IBOutlet weak var bloodPressureFill: UILabel!
    
    @IBOutlet weak var meanBloodPressureFill: UILabel!
    
    @IBOutlet weak var resultFill: UILabel!
    
    @IBOutlet weak var healthTipFill: UILabel!
    
    @IBOutlet weak var imageViewDisplay: UIImageView!
    
    
    var patientID = ""
    var BP = ""
    var meanBP = 0.0
    var result = ""
    var healthTipAdvice = ""
    var image = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageViewDisplay.image = UIImage(named: image)
        patientIDFill.text = "Patient ID: \(patientID)"
        bloodPressureFill.text = "Blood Pressure: \(BP) mmHg"
        meanBloodPressureFill.text = "Mean Blood Pressure: \(meanBP) mm Hg"
        resultFill.text = "Result: \(result)"
        healthTipFill.text = "Health Tip: \(healthTipAdvice)"

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
