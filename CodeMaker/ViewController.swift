//
//  ViewController.swift
//  CodeMaker
//
//  Created by 郭钰麟 on 15/12/24.
//  Copyright © 2015年 Yuln. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var numberPicker: UIPickerView! //the picker for special code
    @IBOutlet weak var codeTextField: UITextView!
    var wordStack = ""
    var codeStack = ""
    var singleCharater = ""
    var switchButtonPressed = false
    
    private let firstComponent  = 0
    private let secondComponent = 1
    private let thirdComponent  = 2
    
    private let firstLineOfNumber  = ["0","1","2","3","4","5","6","7","8","9"]
    private let secondLineOfNumber = ["0","1","2","3","4","5","6","7","8","9"]
    private let thirdLineOfNumber  = ["0","1","2","3","4","5","6","7","8","9"]

    @IBOutlet weak var originalInfo: UILabel!
    @IBOutlet weak var codeInfo: UILabel!
    
    @IBAction func printInfo(sender: UIButton) {
        let alphabet = sender.currentTitle!
        wordStack += alphabet
        originalInfo.text! = wordStack
    }
    
    @IBAction func cleanAllInfo(sender: UIButton) {
        wordStack = ""
        codeStack = ""
        originalInfo.text! = wordStack
        codeInfo.text! = codeStack
        switchButtonPressed = false
    }
    
    
    @IBAction func switchFromWord(sender: UIButton) {
        if !switchButtonPressed{
        if !wordStack.isEmpty{
            for character in wordStack.characters{
                switch character{
                    case " ": singleCharater = " "
                    case "A": singleCharater = "B"
                    case "B": singleCharater = "C"
                    case "C": singleCharater = "D"
                    case "D": singleCharater = "E"
                    case "E": singleCharater = "F"
                    case "F": singleCharater = "G"
                    case "G": singleCharater = "H"
                    case "H": singleCharater = "I"
                    case "I": singleCharater = "J"
                    case "J": singleCharater = "K"
                    case "K": singleCharater = "L"
                    case "L": singleCharater = "M"
                    case "M": singleCharater = "N"
                    case "N": singleCharater = "O"
                    case "O": singleCharater = "P"
                    case "P": singleCharater = "Q"
                    case "Q": singleCharater = "R"
                    case "R": singleCharater = "S"
                    case "S": singleCharater = "T"
                    case "T": singleCharater = "U"
                    case "U": singleCharater = "V"
                    case "V": singleCharater = "W"
                    case "W": singleCharater = "X"
                    case "X": singleCharater = "Y"
                    case "Y": singleCharater = "Z"
                    case "Z": singleCharater = "A"
                default: break
                }
                codeStack += singleCharater
            }
            codeInfo.text! = codeStack
            codeTextField.text! = codeStack
            switchButtonPressed = true
        }
        }else{
            codeStack = ""
            codeInfo.text! = ""
            codeTextField.text! = ""
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == firstComponent{
            return firstLineOfNumber[row]
        }else if component == secondComponent{
            return secondLineOfNumber[row]
        }else{
            return thirdLineOfNumber[row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let zeroKeyboardView = UIView.init(frame: CGRectZero)
        codeTextField.inputView = zeroKeyboardView
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

