//
//  ViewController.swift
//  ImageViewDemo
//
//  Created by Beck,Kylie J on 9/12/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayOL: UIImageView!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        //image must be displayed
        displayOL.image = UIImage(named: "blackcat")
        
        //the description of the image should be displayed.
        outputLabel.text = "This is a nice cat! ❤️ I love cats they're so awesome."
        
    }
    
}

