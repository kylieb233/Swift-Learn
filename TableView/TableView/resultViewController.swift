//
//  resultViewController.swift
//  TableView
//
//  Created by Kylie beck on 11/14/24.
//

import UIKit

class resultViewController: UIViewController {
    
    var contact:Contact?
    

    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var departmentOL: UILabel!
    
    @IBOutlet weak var phoneNumberOL: UILabel!
    
    @IBOutlet weak var officeOL: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameOL.text = "Name: \((contact?.name)!)"
        departmentOL.text = "Department: \((contact?.department)!)"
        phoneNumberOL.text = "Phone Number: \((contact?.phoneNumber)!)"
        officeOL.text = "Office Number: \((contact?.office)!)"

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
