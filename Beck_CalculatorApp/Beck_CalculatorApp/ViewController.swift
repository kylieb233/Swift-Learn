//
//  ViewController.swift
//  Beck_CalculatorApp
//
//  Created by Kylie beck on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    var numberData: String = ""
    var beforeNum: String = ""
    var currentNum: String = ""
    var op: String = ""
    var isOpSelected = false
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//buttons
    @IBAction func buttonAC(_ sender: UIButton) {
        beforeNum = ""
        currentNum = ""
        op = ""
        resultOutlet.text = ""
        isOpSelected = false
        
    }
    @IBAction func buttonC(_ sender: UIButton) {
        var buttonCOut = (currentNum)
        resultOutlet.text = (buttonCOut)
    }
    @IBAction func buttonNegativePositive(_ sender: UIButton) {
        var buttonNegativePositiveOut = String ("-/+")
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        var buttonDivideOut = String ("/")
        op = buttonDivideOut
        resultOutlet.text = (buttonDivideOut)
    }
    @IBAction func buttonSeven(_ sender: UIButton) {
        var buttonSevenOut = String (7)
        if isOpSelected  {
            currentNum += buttonSevenOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonSevenOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonEight(_ sender: UIButton) {
        var buttonEightOut = String (8)
        if isOpSelected  {
            currentNum += buttonEightOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonEightOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonNine(_ sender: UIButton) {
        var buttonNineOut = String (9)
        if isOpSelected  {
            currentNum += buttonNineOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonNineOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonMultiply(_ sender: UIButton) {
        var buttonMultiplyOut = String ("*")
        op = buttonMultiplyOut
        resultOutlet.text = (buttonMultiplyOut)
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        var buttonFourOut = String (4)
        if isOpSelected  {
            currentNum += buttonFourOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonFourOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonFive(_ sender: UIButton) {
        var buttonFiveOut = String (5)
        if isOpSelected  {
            currentNum += buttonFiveOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonFiveOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonSix(_ sender: UIButton) {
        var buttonSixOut = String (6)
        var buttonSevenOut = String (7)
        if isOpSelected  {
            currentNum += buttonSixOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonSixOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonSubtract(_ sender: UIButton) {
        var buttonSubtractOut = String ("-")
        op = buttonSubtractOut
        resultOutlet.text = buttonSubtractOut
        
    }
    @IBAction func buttonOne(_ sender: UIButton) {
        var buttonOneOut = String (1)
        if isOpSelected  {
            currentNum += buttonOneOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonOneOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonTwo(_ sender: UIButton) {
        var buttonTwoOut = String (2)
        if isOpSelected  {
            currentNum += buttonTwoOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonTwoOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonThree(_ sender: UIButton) {
        var buttonThreeOut = String (3)
        if isOpSelected  {
            currentNum += buttonThreeOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonThreeOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
    var buttonOutlet = ("+")
        op = buttonOutlet
        resultOutlet.text = buttonOutlet
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        var buttonZeroOut = String (0)
        var buttonSevenOut = String (7)
        if isOpSelected  {
            currentNum += buttonZeroOut
            resultOutlet.text = currentNum
        }else {
            beforeNum += buttonZeroOut
            resultOutlet.text = beforeNum
        }
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        var buttonDecimalOut = String (".")
        resultOutlet.text = (buttonDecimalOut)
      
    }
    @IBAction func buttonPercent(_ sender: UIButton) {
        var buttonPercentOut = String ("%")
        resultOutlet.text = ("%")
        
    }
    @IBAction func buttonEqual(_ sender: UIButton) {
        var buttonEqualOut = String ("=")
        if beforeNum != "" && currentNum != "" && currentNum != "" {
            var result = calc()
            resultOutlet.text = result
        }
    }
    
    func calc() -> String {
        var result2: Double = 0
        var firstnum = Double (beforeNum)
        var secondnum = Double (currentNum)
        
        switch op {
        case "+":
            result2 = (firstnum! + secondnum!)
        case "-":
            result2 = (firstnum! - secondnum!)
        case "*":
            result2 = (firstnum! * secondnum!)
        case "/":
            if secondnum! != 0 {
                result2 = firstnum! / secondnum!
            }
        default:
            break
        }
        return String(result2)
    }

}

