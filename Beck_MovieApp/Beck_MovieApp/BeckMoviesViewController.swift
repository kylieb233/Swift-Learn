//
//  ViewController.swift
//  Beck_MovieApp
//
//  Created by Kylie beck on 11/18/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row]
        return cell
        
    }
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var selectedGenre = genres[indexPath.row]
        performSegue(withIdentifier: "listSegue", sender: selectedGenre)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        self.title = "Genres"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listSegue" {
            if let destinationVC = segue.destination as? MovieListViewController,
            let selectedGenre = sender as? Movies{
                destinationVC.selectedGenre = selectedGenre
            }
        }
    }
}

