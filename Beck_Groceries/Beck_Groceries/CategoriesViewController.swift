//
//  ViewController.swift
//  Beck_Groceries
//
//  Created by Kylie beck on 12/6/24.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    
    
    @IBOutlet weak var categoriesTableViewOL: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        cell.textLabel?.text = categoryNames[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "groceriesSegue"
            ,let indexPath = categoriesTableViewOL.indexPathForSelectedRow {
            let groceries = segue.destination as! GroceriesViewController
            groceries.items = allCategories[indexPath.row]
            groceries.title = categoryNames[indexPath.row]
        }
        
    }
}
