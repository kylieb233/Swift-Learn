//
//  ViewController.swift
//  Beck_Exam01
//
//  Created by Kylie beck on 9/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countryInput: UITextField!
    
    @IBOutlet weak var electricityConsumedInput: UITextField!
    
    
    @IBOutlet weak var imageOutput: UIImageView!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var Label3: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButon(_ sender: Any) {
        
        var countryChosen = countryInput.text
        var electricityConsumed = Double (electricityConsumedInput.text!)
                
        if (electricityConsumed! > 0 || electricityConsumed! < 2222){
            labelOne.text = ("Location: \(String(describing: countryChosen))")
            labelTwo.text = ("Electricity Consumed: \(electricityConsumed!)")
            Label3.text = ("Carbon footprint: ")
            labelFour.text = ("Result: Low Carbon Footprint ")
            labelFive.text = ("This is because of Small-scale farming: Manual labor or energy-efficient practices, limited machinery use and Organic farming🌳")
            imageOutput.image = UIImage(named: "LowCarbonFootprint")

        }
        else if(electricityConsumed! > 2223 || electricityConsumed! < 5555){
            labelOne.text = ("Location: \(String(describing: countryChosen))")
            labelTwo.text = ("Electricity Consumed: \(electricityConsumed!)")
            Label3.text = ("Carbon footprint: ")
            labelFour.text = ("Result: Medium Carbon Footprint")
            labelFive.text = ("This is because of Small-scale farming: Manual labor or energy-efficient practices, limited machinery use and Organic farming🌳")
            imageOutput.image = UIImage(named: "MediumCarbonFootprint")

        }
        else{
            labelOne.text = ("Location: \(String(describing: countryChosen))")
            labelTwo.text = ("Electricity Consumed: \(electricityConsumed!)")
            Label3.text = ("Carbon footprint: ")
            labelFour.text = ("Result: High Carbon Footprint")
            labelFive.text = ("This is because of Large-scale industrial farming: Intensive use of machinery, fertilizers, and pesticides and High livestock concentration🐄🐄🐓")
            imageOutput.image = UIImage(named: "HighCarbonFootprint")

        }
        
    }
    @IBAction func resetButton(_ sender: Any) {
        countryInput.text = ""
        electricityConsumedInput.text = ""
        labelOne.text = ""
        labelTwo.text = ""
        Label3.text = ""
        labelFour.text = ""
        labelFive.text = ""
    }
    
    
    
    
}

