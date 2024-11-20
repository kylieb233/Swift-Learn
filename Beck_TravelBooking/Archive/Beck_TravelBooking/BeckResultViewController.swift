//
//  BeckResultViewController.swift
//  Beck_TravelBooking
//
//  Created by Kylie beck on 11/14/24.
//

import UIKit

class BeckResultViewController: UIViewController {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    var image = ""
    var result = ""
    var name = ""
    var numOfTrav = 0
    var cabin = ""
    var totalCost = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageOL.image = UIImage(named: image)
        resultOL.text! = result
        travellerNameOL.text = "Name: \(name)"
        noOfTravellersOL.text = "Number of Travellers: \(numOfTrav)"
        cabinTypeOL.text = "Cabin class: \(cabin)"
        totalCostOL.text = "Total: \(totalCost)$"
        
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
