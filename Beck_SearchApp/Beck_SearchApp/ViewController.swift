//
//  ViewController.swift
//  Beck_SearchApp
//
//  Created by Kylie beck on 11/6/24.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    
    
    @IBOutlet weak var resetButton: UIButton!
    var arr = [
        ["actor2"]
        , ["movie1","movie2"],
        ["ariana","ariana3","ariana4"],
        ["cats1","cats2","cats3"],
        ["food1","food2"]]
    
    var actors_keywords = [["Acting"],["Star"],["Adriana Lima"],["Play"],["Script"]]
    var movie_keywords = [["Actors"],["Rotten Tomato"],["Popcorn"],["Theatre"],["Ticket"]]
    var singer_keywords = [["Microphone"],["Music"],["Talented"],["Performer"],["Band"]]
    var cats_keywords = [["Fur"],["Feline"],["Tabby"],["Meow"],["Whiskers"]]
    var food_keywords = [["Meal"],["Potato"],["Healthy"],["Greenbean"],["Vegetable"]]
    
    var currTopicIndex: Int?
    var currImageIndex = 0
    
    
    var topics_array = [["Actors are people who play in movies, they are super talented and have a lot of professional background in order to play in these movies."],["One famous movie that people have been raving about is the Pirates of the Caribean, people will watch movies all across the world. They have been a big part of the worlds history."],["Cats are one of the most loved animals in the home. They are not only cuddly and nice, but they make people feel good and boost the mental health of their owners."],["People love eating food, there are so many things that food provide us. We need to make sure we are eating a balanced meal."],["This singer is one of the most popular singers of all time currently. She not only sings pop music but is now starring in the movie Wicked."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.isEnabled = false
        prevButton.isEnabled = false
        resetButton.isEnabled = false
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello"
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
          
                    
    }
        @IBAction func ShowNextImageBtn(_ sender: Any) {
            currTopicIndex = 0
            currImageIndex = 0
            AudioServicesPlaySystemSound(1105)
            
        }
        @IBAction func ShowPrevImagesBtn(_ sender: Any) {
            AudioServicesPlaySystemSound(1105)
            currTopicIndex = 0
            currImageIndex = 0
            AudioServicesPlaySystemSound(1105)
            
        }
        @IBAction func ResetBtn(_ sender: Any) {
            AudioServicesPlaySystemSound(1111)
            topicInfoText.text = ""
            resultImage.image = UIImage(named: "")
            
        }
        
        
        
    }

