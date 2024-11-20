//
//  ViewController.swift
//  animationApp
//
//  Created by Kylie beck on 10/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        //move the image outside of the view
        imageViewOL.frame.origin.x = view.frame.maxX
        
        //similarly, move the other components outside of the view
        happyOutlet.frame.origin.x = view.frame.width
        //sadOutlet.frame.origin.x = view.frame.width
        sadOutlet.frame.origin.x = view.frame.width
        //angryOutlet.frame.origin.x = view.frame.width
        angryOutlet.frame.origin.x = view.frame.width
        shakeOutlet.frame.origin.x = view.frame.width
      
    }
    
    
    
    @IBAction func happyButtonClicked(_ sender: UIButton) {
        updateImage("happy")
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton) {
        updateImage("sad")
        
    }
    
    @IBAction func angryButtonClicked(_ sender: UIButton) {
        updateImage("angry")
    }
    
    @IBAction func shakeButtonClicked(_ sender: UIButton) {
        
        var width = imageViewOL.frame.width
        width += 40
        
        var height = imageViewOL.frame.height
        height += 40
        
        var x = imageViewOL.frame.origin.x-30
        var y = imageViewOL.frame.origin.y-30
        
        var largeFrame = CGRect(x: x, y: y,  width: width, height: height)
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 40, animations: {
            self.imageViewOL.frame = largeFrame
            
        })
    }
    
    @IBAction func showButtonClicked(_ sender: UIButton) {
        
        //All the components should be placed back to their original position
        UIView.animate(withDuration: 1, animations: 
                        {
            self.imageViewOL.center.x = self.view.center.x
            
            self.happyOutlet.center.x = self.view.center.x
            
            self.sadOutlet.center.x = self.view.center.x
            
            self.angryOutlet.center.x = self.view.center.x
            
            self.shakeOutlet.center.x = self.view.center.x
        })
        //Disable the show button

        showOutlet.isEnabled = false
    }
    
    func updateImage(_ imageName: String){
        //making the current image transparent
        UIView.animate(withDuration: 2, animations: {
            self.imageViewOL.alpha = 0
        })
        
        //change the image and make it transparent
        //alpha = 1
        UIView.animate(withDuration:2, delay: 0, animations: {
            self.imageViewOL.alpha = 1
            self.imageViewOL.image = UIImage(named: imageName)
        })
    }
    
    
    
    
    
    
    
}

