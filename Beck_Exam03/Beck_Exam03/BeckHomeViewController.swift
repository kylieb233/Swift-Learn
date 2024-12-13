//
//  ViewController.swift
//  Beck_Exam03
//
//  Created by Kylie beck on 12/3/24.
//

import UIKit


class BeckHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = beckTVOL.dequeueReusableCell(withIdentifier: "beckCell", for:indexPath)
        
        cell.textLabel?.text = games[indexPath.row].name
        
        return cell
    }
    
    var gamesOrder = [Game]()
    

    @IBOutlet weak var beckTVOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        beckTVOL.delegate = self
        beckTVOL.dataSource = self

        gamesOrder.append(contentsOf: games)
        


    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "beckDescriptionSegue"{
            var destination = segue.destination as! BeckGameViewController
            destination.game = games[(beckTVOL.indexPathForSelectedRow?.row)!]
            

    
        }
    }


}

