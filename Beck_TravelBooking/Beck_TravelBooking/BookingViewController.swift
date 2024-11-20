//
//  ViewController.swift
//  Beck_TravelBooking
//
//  Created by Kylie beck on 11/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    var image = ""
    var result = ""
    var name = ""
    var numOfTrav = 0
    var cabin = ""
    var totalCost = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func bookNowButton(_ sender: Any) {
        name = travellerNameOL.text!
        numOfTrav = Int (noOfTravellersOL.text!)!
        cabin = cabinTypeOL.text!
        
        if(cabin == "Luxury") || (cabin == "luxury"){
            result = "Hello \(name), your booking is confirmed."
            totalCost+=Double(250*numOfTrav)
            image = "luxurious-flight-interior-stockcake"
        }
        else if(cabin == "Economy") || (cabin == "economy"){
            result = "Hello \(name), your booking is confirmed."
            totalCost = Double(150*numOfTrav)
            image = "economy 1"
            
        }
        else{
            result = "Please select a valid class"
            image = "invalid"
            name = ""
            numOfTrav = 0
            cabin = ""
            totalCost = 0
            
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.identifier
        if (destination == "resultSegue"){
            let destination = segue.destination as! BeckResultViewController
            destination.image = image
            destination.result = result
            destination.numOfTrav = numOfTrav
            destination.cabin = cabin
            destination.totalCost = totalCost
            destination.name = name
            
        }
    }
    
}
