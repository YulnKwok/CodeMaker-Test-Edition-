//
//  DecodeViewController.swift
//  CodeMaker
//
//  Created by 郭钰麟 on 16/4/17.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class DecodeViewController: UIViewController {
    @IBOutlet weak var decodeTextField: UITextView!         //用于输入需要解码的内容，无键盘
    @IBOutlet weak var decodeInfo: UILabel!                 //显示经过解码的内容
    @IBOutlet weak var decodeNumberPicker: UIPickerView!    //用于解码的Picker
    
    var decodeWordStack = ""
    var codeStack = ""
    var singleCharater = ""
    var switchButtonPressed = false
    
    private let firstComponent  = 0
    private let secondComponent = 1
    private let thirdComponent  = 2
    private let firstLineOfNumber  = ["0","1","2","3","4","5","6","7","8","9"]
    private let secondLineOfNumber = ["0","1","2","3","4","5","6","7","8","9"]
    private let thirdLineOfNumber  = ["0","1","2","3","4","5","6","7","8","9"]
    
    @IBAction func printInfo(sender: UIButton) {
        let alphabet = sender.currentTitle!
        decodeWordStack += alphabet
        decodeTextField.text = decodeWordStack
    }
    
    @IBAction func cleanAllInfo(sender: UIButton) {
        decodeWordStack = ""
        decodeInfo.text! = decodeWordStack
        decodeTextField.text! = decodeWordStack
    }
    
    
    @IBAction func switchFromWord(sender: UIButton) {
        //the third wheel
        let selectedRow2 = decodeNumberPicker.selectedRowInComponent(thirdComponent)
        let selectedRowString2 = "\(selectedRow2)"
        let decodeWheel2 = DecodeWheel2()
        let transformInfo2 = decodeWheel2.switchFromDecodeInfoByDecodeWheel2(wheelNumber:selectedRowString2,decodeString:decodeWordStack)
        //the second wheel
        let selectedRow1 = decodeNumberPicker.selectedRowInComponent(secondComponent)
        let selectedRowString1 = "\(selectedRow1)"
        let decodeWheel1 = DecodeWheel1()
        let transformInfo1 = decodeWheel1.switchFromDecodeInfoByDecodeWheel1(wheelNumber:selectedRowString1,decodeString:transformInfo2!)
        //the first wheel
        let selectedRow0 = decodeNumberPicker.selectedRowInComponent(firstComponent)
        let selectedRowString0 = "\(selectedRow0)"
        let decodeWheel0 = DecodeWheel0()
        let transformInfo0 = decodeWheel0.switchFromDecodeInfoByDecodeWheel0(wheelNumber:selectedRowString0,decodeString:transformInfo1!)
        decodeInfo.text! = transformInfo0!
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
        decodeTextField.inputView = zeroKeyboardView
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    

}
