//
//  MovieInfoViewController.swift
//  Beck_MovieApp
//
//  Created by Kylie beck on 11/23/24.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var movieInfoOutlet
    : UITextView!
    
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    
    var movie: MovieList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieInfoOutlet.isHidden = true
        self.title = movie?.movieName
        if let movie = movie {
            movieImageViewOutlet.image = UIImage(named: movie.movieImage)
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showInfoAction(_ sender: Any) {
        movieInfoOutlet.isHidden = false
        var movie = movie
        if let movie = movie {
            movieInfoOutlet.text = movie.movieInfo
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
