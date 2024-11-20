//
//  ViewController.swift
//  GuessAWord
//
//  Created by Kylie beck on 10/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lettersEntered: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var enteringLetters: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"]]
        
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkButton.isEnabled = false;
                //Get the first word from the array
                word = words[count][0]
                
                lettersEntered.text = ""
                
                //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
                updateUnderscores();
                
                //Get the first hint from the array
                hintLabel.text = "Hint: "+words[count][1]
                
                //Clear the status label intially.
                statusLabel.text = ""
    }

   
    @IBAction func enteringLetters(_ sender: UITextField) {
        
        //Get the text from the text field.
               var letter = enteringLetters.text!
               
               //Replace the guessed letter if the letter is part of the word.
               lettersGuessed = lettersGuessed + letter
               var revealedWord = ""
               for l in word{
                   if lettersGuessed.contains(l){
                       revealedWord += "\(l)"
                   }
                   else{
                       revealedWord += "_ "
                   }
               }
               //Assigning the word to displaylabel after a guess
               lettersEntered.text = revealedWord
               enteringLetters.text = ""
               
               //If the word is guessed correctly, we are enabling play again button and disabling the check button.
               if lettersEntered.text!.contains("_") == false{
                   playAgainButton.isHidden = false;
                   checkButton.isEnabled = false;
               }
               checkButton.isEnabled = false
    }
    

    
    
    @IBAction func checkButton(_ sender: Any) {
        //Reset the button to disable initially.
                playAgainButton.isHidden = true
                //clear the label
                lettersGuessed = ""
                count += 1
                //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
                if count == words.count{
                    
                    statusLabel.text = "Congruations! You are done with the game!"
                    //clearing the labels.
                    lettersEntered.text = ""
                    hintLabel.text = ""
                }
                else{
                    //fetch the next word from the array
                    word = words[count][0]
                    //fetch the hint related to the word
                    hintLabel.text = "Hint: "
                    hintLabel.text! += words[count][1]
                    //Enabling the check button.
                    checkButton.isEnabled = true
                    
                    lettersEntered.text = ""
                    updateUnderscores()
                }
    }
    
    @IBAction func playAgainButtonPushed(_ sender: Any) {
        //Read the data from the text field
               var textEntered = enteringLetters.text!;
               //Consider only the last character by calling textEntered.last and trimming the white spaces.
               textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
               enteringLetters.text = textEntered
               
               //Check whether the entered text is empty or not to enable check button.
               if textEntered.isEmpty{
                   checkButton.isEnabled = false
               }
               else{
                   checkButton.isEnabled = true
               }
               
           }
           
           func updateUnderscores(){
               for letter in word{
                   lettersEntered.text! += "_ "
               }
           
    }
    
}

