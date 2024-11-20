//
//  ViewController.swift
//  movieDemo
//
//  Created by Kylie beck on 11/19/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //create cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "reusableMovieCell", for: indexPath) as! movieCellCollectionViewCell
        
        //populate cell
        cell.assignMovie(with: movies[indexPath.row])
        
        //return cell
        return cell
        
    }
    
    //we are using this to display the selected movie
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
        
    }
    
    func assignMovieDetails(index: IndexPath){
        titleOL.text = "Title: \(movies[index.row].title)"
        yearReleasedOL.text = "Year Released: \(movies[index.row].releasedYear)"
        movieRatingOL.text = "Movie Rating: \(movies[index.row].movieRating)"
        boxOfficeOL.text = "Box Office: \(movies[index.row].boxOffice)"
        
    }
    
    @IBOutlet weak var collectionViewOL: UICollectionView!

    
    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var movieRatingOL: UILabel!
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
    }


}

