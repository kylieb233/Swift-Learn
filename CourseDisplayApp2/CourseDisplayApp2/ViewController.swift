//
//  ViewController.swift
//  CourseDisplayApp2
//
//  Created by Kylie beck on 10/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var courseNumOutput: UILabel!
    
    @IBOutlet weak var courseNameOutput: UILabel!
    
    @IBOutlet weak var semesterOfferedOutput: UILabel!
    
    @IBOutlet weak var previousButtonOL: UIButton!
    
    @IBOutlet weak var nextButtonOL: UIButton!
    
    var imageNum = 0
    
    let courses = [["appleMac", "44555", "Network Security", "Fall 2024"],
                   ["butterfly", "55694", "Butterfly Anatomy", "Spring 2025"],
                   ["meow", "67523", "Culture of Cats", "Fall 2024"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the first image
        displayImage.image = UIImage(named:courses[0][0])
        
        //Display the details (courseNum, courseName, sem) of first course
        courseNumOutput.text = courses[0][1]
        courseNameOutput.text = courses[0][2]
        semesterOfferedOutput.text = courses[0][3]
        
        //prvious button is disabled.
        previousButtonOL.isEnabled = false
    }

    @IBAction func previousButtonClick(_ sender: UIButton) {
        //increment the image number
        imageNum -= 1
        
        //display the details (image, num, title, sem)
        updateCourseDetails(imageNum)
        
       
        //once you reach the end pf the array, next button should be disabled
        if(imageNum == 0){
            previousButtonOL.isEnabled = false
        }
        nextButtonOL.isEnabled = true
    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        
        //increment the image number
        imageNum += 1
        
        //display the details (image, num, title, sem)
        updateCourseDetails(imageNum)

        
        //previous button must be enabled to true
        previousButtonOL.isEnabled = true
        
        //once you reach the end pf the array, next button should be disabled
        if(imageNum == courses.count-1){
            nextButtonOL.isEnabled = false
        }
    }
    func updateCourseDetails(_ imageNum: Int){
        displayImage.image = UIImage(named:courses[imageNum][0])
        courseNumOutput.text = courses[imageNum][1]
        courseNameOutput.text = courses[imageNum][2]
        semesterOfferedOutput.text = courses[imageNum][3]
    }
    
}

