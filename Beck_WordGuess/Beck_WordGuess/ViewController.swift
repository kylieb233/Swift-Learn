//
//  ViewController.swift
//  Beck_WordGuess
//
//  Created by Kylie beck on 10/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessALetter: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    var wordsHints = [["BECK", "Kylie"],
                      ["COMPUTER", "Technology"],
                      ["YOYO", "Toy"],
                      ["NECKLACE", "Jewelry"],
                      ["HAPPY",
                       "Emotion"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    var maxNumOfWrongGuesses = 10;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        guessALetter.isEnabled = false;
        word = wordsHints[count][0]
        
        userGuessLabel.text = ""
        
        updateUnderScores();
        
        hintLabel.text = "Hint: " + wordsHints[count][1]
        
        statusLabel.text = ""
        
        wordsGuessedLabel.text = "Total number of words guessed succesfully: 0"
        
        wordsRemainingLabel.text = "Total number of words remaining in the game:  \(wordsHints[0].count)"
        
        totalWordsLabel.text = "Total words in the game: \(wordsHints[0].count)"
    }
    
    
    @IBAction func lettersEntering(_ sender: UITextField) {
        //Read the data from the text field
        var textEntered = guessLetterField.text!;
        //Consider only the last character by calling textEntered.last and trimming the white spaces.
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEntered
        
        //Check whether the entered text is empty or not to enable check button.
        if textEntered.isEmpty{
            guessALetter.isEnabled = false
        }
        else{
            guessALetter.isEnabled = true
        }
    }

            
          
            
    
    func updateUnderScores() {
        for letter in word{
            userGuessLabel.text! += "_ "
        }
    }
    
                
            
            
    

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
                 
        var letter = guessLetterField.text!
        
        
        lettersGuessed = lettersGuessed + letter
        var revealWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealWord += "\(1)"
            }
            else {
                revealWord += "_ "
            }
        }
        userGuessLabel.text = revealWord
        guessLetterField.text = ""
        
        if userGuessLabel.text!.contains("_") == false{
            playAgain.isHidden = false;
            guessALetter.isEnabled = false;
            
        }
        guessALetter.isEnabled = false
        
        
    }
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        playAgain.isHidden = true
        //clear the label
        lettersGuessed = ""
        count += 1
        //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
        if count == wordsHints.count{
            
            statusLabel.text = "Congratulations! You are done with the game!"
            //clearing the labels.
            userGuessLabel.text = ""
            hintLabel.text = ""
        }
        else{
            
            //fetch the next word from the array
            word = wordsHints[count][0]
            //fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += wordsHints[count][1]
            //Enabling the check button.
            guessALetter.isEnabled = true
            
            userGuessLabel.text = ""
            updateUnderScores()
         
            
        }
    }

    
    
}

