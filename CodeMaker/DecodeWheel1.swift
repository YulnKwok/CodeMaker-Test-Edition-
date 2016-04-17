//
//  DecodeWheel1.swift
//  CodeMaker
//
//  Created by 郭钰麟 on 16/4/17.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import Foundation

class DecodeWheel1{
    private var originalAlphabetTable = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    private let alpabetTable = ["0":["q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"],"1":["p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o"],"2":["o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n"],"3":["n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m"],"4":["m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l"],"5":["l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k"],"6":["k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j"],"7":["j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i"],"8":["i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h"],"9":["h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g"]]
    
    func switchFromDecodeInfoByDecodeWheel1(wheelNumber number:String,decodeString string:String)->(String?){
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