//
//  ViewController.swift
//  Beck_PracticeExam3
//
//  Created by Kylie beck on 11/30/24.
//

import UIKit

class Contact{
    var phoneNumber:Int?
    var initials:String?
    
    init(phoneNumber: Int? = nil, initials: String? = nil) {
        self.phoneNumber = phoneNumber
        self.initials = initials
    }
}


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "ContactCell", for:indexPath)
        cell.textLabel?.text = contacts[indexPath.row].initials
        return cell
    }
    
    
    
var contacts = [Contact]()
    @IBOutlet weak var tableViewOL: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        
        let c1 = Contact(phoneNumber: 2039139132, initials: "KB")
        let c2 = Contact(phoneNumber: 8403848023, initials: "AB")
        let c3 = Contact(phoneNumber: 4892081424, initials: "PL")
        let c4 = Contact(phoneNumber: 1824923923, initials: "XG")
        let c5 = Contact(phoneNumber: 8458320834, initials: "BC")
        let c6 = Contact(phoneNumber: 8484091232, initials: "SB")
        let c7 = Contact(phoneNumber: 2983749429, initials: "ER")
        let c8 = Contact(phoneNumber: 4027891034, initials: "MO")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ContactSegue"{
            var destination = segue.destination as! profileViewController
            
            destination.contact = contacts[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }


}

