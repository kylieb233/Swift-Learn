//
//  ViewController.swift
//  CoordinatesApp
//
//  Created by Kylie beck on 10/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // To print minimum value of x, y for the image
        var minx = imageDisplay.frame.minX
        var miny = imageDisplay.frame.minY
        print(minx, ",", miny)
        
        
        var maxx = imageDisplay.frame.maxX
        var maxy = imageDisplay.frame.maxY
        print(maxx, ",", maxy)
        
        var midx = imageDisplay.frame.midX
        var midy = imageDisplay.frame.midY
        print("(",midx, ",", midy,")")
        
        let w = imageDisplay.frame.width
        print(w)
        let h = imageDisplay.frame.height
        print(h)
        
        //1. Move the image to the top left corner
        imageDisplay.frame.origin.x = 0
        imageDisplay.frame.origin.y = 0
        
        //2. moving the image to the top right corner
        imageDisplay.frame.origin.x = 302
        imageDisplay.frame.origin.y = 0
        
        //3. moving the image to the bottom left
        imageDisplay.frame.origin.x = 0
        imageDisplay.frame.origin.y = 100
        
        //4. moving the image to the bottom right
        imageDisplay.frame.origin.x = 302
        imageDisplay.frame.origin.y = 774
        
        //5. Movin the image to the centre of the view
        
        //for mid point the x coordinate is (402-100) divided by 2,
        //for mid point the y coordinate is (874-100) divided by 2
        imageDisplay.frame.origin.x = 151
        imageDisplay.frame.origin.y = 387
        
        
    }
    
    @IBAction func animateButtonClicked(_ sender: UIButton) {
        
        //Animate the image with alpha = 0.2, alpha ranges from 0 to 1 - 0 being the fading image and 1 shows the complete image
        UIView.animate(withDuration: 5, animations: {
            self.imageDisplay.alpha = 0.2
        })
        UIView.animate(withDuration: 5, delay: 5, usingSpringWithDamping: 1, initialSpringVelocity: 40, animations: {
            self.imageDisplay.alpha = 0.6
            
        })
    }
    

}

