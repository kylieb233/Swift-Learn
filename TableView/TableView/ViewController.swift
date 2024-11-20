//
//  ViewController.swift
//  TableView
//
//  Created by Kylie beck on 11/14/24.
//

import UIKit

class Contact{
    var name:String?
    var department:String?
    var phoneNumber:String?
    var office:String?
    
    init(name: String, department: String? = nil, phoneNumber: String? = nil, office: String? = nil) {
        self.name = name
        self.department = department
        self.phoneNumber = phoneNumber
        self.office = office
    }
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the number of counts
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for:indexPath)
        
        //populate a cell
        cell.textLabel?.text = contacts[indexPath.row].name


        //return the cell
        return cell
    }
    
    
    
    //Create Contacts array
    var contacts = [Contact]()
    @IBOutlet weak var tableViewOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        
        let c1 = Contact(name: "Ajay", department: "Computer Science", phoneNumber: "402.292.2484", office: "CH 2250")
        contacts.append(c1)
        let c2 = Contact(name: "Gregor", department: "Science", phoneNumber: "393.258.2484", office: "GS 1292")
        contacts.append(c2)

        let c3 = Contact(name: "Crystal", department: "Computer Science", phoneNumber: "309.293.1912", office: "CH 1239")
        contacts.append(c3)

        let c4 = Contact(name: "Jenny", department: "Languages", phoneNumber: "660.329.5540", office: "CH 2403")
        contacts.append(c4)

        //sort the contacts
        contacts.sort { $0.name?.lowercased() ?? "" < $1.name?.lowercased() ?? "" }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailSegue"{
            var destination = segue.destination as! resultViewController
            
            //assign the selected row contact to the destination
            destination.contact = contacts[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
}

