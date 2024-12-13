//
//  profileViewController.swift
//  Beck_PracticeExam3
//
//  Created by Kylie beck on 11/30/24.
//

import UIKit

class profileViewController: UIViewController {
    
    var contact:Contact?
    @IBOutlet weak var phoneNumberOL: UILabel!
    @IBOutlet weak var initialsOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        phoneNumberOL.text = "Phone Number: \((contact?.phoneNumber)!)"
        initialsOL.text = "Initials: \((contact?.initials)!)"
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
