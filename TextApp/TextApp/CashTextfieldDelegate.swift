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
        let oldText = textField.text! as String
        //newText = newText.replacingCharacters(in: range, with: string) as String
        
        
        let numOfPennies = Int(oldText)
        
        let secondPart = numOfPennies! % 100
        let firstPart = numOfPennies! / 100
        
        let newText = "$" + String(firstPart) + "." + String(secondPart)
        textField.text = newText
        
        return false
        
    }
}
