//
//  DecodeWheel0.swift
//  CodeMaker
//
//  Created by 郭钰麟 on 16/4/17.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import Foundation

class DecodeWheel0{
    private var originalAlphabetTable = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    private let alpabetTable = ["0":["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],"1":["z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y"],"2":["y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x"],"3":["x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w"],"4":["w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v"],"5":["v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u"],"6":["u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t"],"7":["t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s"],"8":["s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r"],"9":["r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q"]]
    
    func switchFromDecodeInfoByDecodeWheel0(wheelNumber number:String,decodeString string:String)->(String?){
        var trasformString = ""
        let number1 = number
        let selectedAlphabetTable = alpabetTable[number1]
        for character in string.characters{
            let index = originalAlphabetTable.indexOf("\(character)")!
            let transformLetter = selectedAlphabetTable![index]
            trasformString += transformLetter
        }
        return trasformString
    }
    
}