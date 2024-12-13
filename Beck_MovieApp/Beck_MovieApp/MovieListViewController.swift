//
//  MovieListViewController.swift
//  Beck_MovieApp
//
//  Created by Kylie beck on 11/18/24.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedGenre?.list_Array.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
            cell.textLabel?.text = selectedGenre?.list_Array[indexPath.row].movieName
                return cell
    }
    

    @IBOutlet weak var movieListTableView: UITableView!
    
    var selectedGenre: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedGenre?.genre
        movieListTableView.delegate = self
        movieListTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MovieInfoSegue",
           let destinationVC = segue.destination as? MovieInfoViewController,
           var selectedMovie = sender as? MovieList {
            destinationVC.movie = selectedMovie
        }
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
