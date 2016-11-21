//
//  CashTextfieldDelegate.swift
//  TextApp
//
//  Created by Pomme on 11/13/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import Foundation
import UIKit

class CashTextfieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        var newTextStr = String(newText)
        
        let digits = CharacterSet.decimalDigits
        var digitText = ""
        for c in (newTextStr?.unicodeScalars)! {
            if digits.contains(UnicodeScalar(c.value)!) {
                digitText.append("\(c)")
            }
        }
        
        //  Format new str
        if let numOfPennies = Int(digitText) {
            newText = "$" + self.dollarStr(numOfPennies) + "." + self.centsStr(numOfPennies)
        } else {
            newText = "$0.00"
        }
        
        textField.text = newText
        
        return false
        
    }
    
    // begin edit when is empty
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // dollar
    func dollarStr(_ value: Int) -> String {
        return String(value / 100)
    }
    
    // cents
    func centsStr(_ value: Int) -> String {
        let cents = value % 100
        var centsStr = String(cents)
        
        if cents < 10 {
            // $0.05
            centsStr = "0" + centsStr
        }
        return centsStr
    }
    
    
    
    
    
    
    
    
    
    
    
}
