//
//  ViewController.swift
//  VowelTesterApp
//
//  Created by Beck,Kylie J on 9/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputOL: UITextField!
    
    
    @IBOutlet weak var OutputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //Read the sentence and assign it to a var
        var vowelSentence = InputOL.text!
        
        
        //check whether the text is having a vowel or not
        if(vowelSentence.contains("a")) ||
            vowelSentence.contains("e") ||
            vowelSentence.contains("i") ||
            vowelSentence.contains("o") ||
            vowelSentence.contains("u") {
            //if vowel, assign an appropriate message to the display label.
            OutputOL.text = ("The entered text, \(vowelSentence), has vowels")
        }
        else{
            //if not vowel, assign an appropriate message to the display label
            OutputOL.text = ("The entered text has no vowels")
        }
    }
}

