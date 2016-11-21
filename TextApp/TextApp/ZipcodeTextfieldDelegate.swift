//
//  ZipcodeTextfieldDelegate.swift
//  TextApp
//
//  Created by Pomme on 11/12/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import Foundation
import UIKit

class ZipcodeTextfieldDelegate : NSObject, UITextFieldDelegate {
   
    
    
    // Construct the text that will be in the field if this change is accepted
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
                
        //return true gives the textfield permission to change its text
        return (newText.length <= 5)
    }
    
    
    
    
    
    
    
    
    
    
    
}


