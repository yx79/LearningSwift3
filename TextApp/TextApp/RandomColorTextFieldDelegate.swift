//
//  RandomColorTextFieldDelegate.swift
//  TextApp
//
//  Created by Pomme on 11/21/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple,UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.black]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }

    func randomColor() -> UIColor {
        let randomInt = Int(arc4random() % UInt32(colors.count))
        return colors[randomInt]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
