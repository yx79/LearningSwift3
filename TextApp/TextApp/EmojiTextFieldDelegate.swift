//
//  EmojiTextFieldDelegate.swift
//  TextApp
//
//  Created by Pomme on 11/21/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class EmojiTextFieldDelegate: NSObject, UITextFieldDelegate {
    // Mark: properties
    var translation = [String : String]()
    
    // MARK: Initializer
    override init() {
        super.init()
        translation["heart"] = "\u{0001F496}"
        translation["fish"] = "\u{E522}"
        translation["bird"] = "\u{E523}"
        translation["frog"] = "\u{E531}"
        translation["bear"] = "\u{E527}"
        translation["monkey"] = "🙊"
        translation["dog"] = "🐶"
        translation["cat"] = "🐱"
        translation["banana"] = "🍌"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var replacingEmoji = false
        var emojiStrRange: NSRange
        
        // construct text
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // go through dictionary
        for (emojiStr, emoji) in translation {
            // search word and replace
            repeat {
                emojiStrRange = newText.range(of: emojiStr, options: .caseInsensitive)
                // found one
                if emojiStrRange.location != NSNotFound {
                    newText = newText.replacingCharacters(in: emojiStrRange, with: emoji) as NSString
                    replacingEmoji = true
                }
            } while emojiStrRange.location != NSNotFound
            
        }
        
        // if replaced emoji, directly edit text
        if replacingEmoji {
            textField.text = newText as String
            return false
        } else {
            return true
        }

    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
}
