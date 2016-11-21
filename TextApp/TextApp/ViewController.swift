//
//  ViewController.swift
//  TextApp
//
//  Created by Pomme on 11/12/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // mark: properties
    let zipcodeDelegate = ZipcodeTextfieldDelegate()
    let cashDelegate = CashTextfieldDelegate()
    let randomColorDelegate = RandomColorTextFieldDelegate()
    let emojiDelegate = EmojiTextFieldDelegate()
    
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var emojiTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipcodeTextField.delegate = self.zipcodeDelegate
        self.cashTextField.delegate = self.cashDelegate
        self.emojiTextField.delegate = self.emojiDelegate
        self.lockableTextField.delegate = self
        self.colorTextField.delegate = self.randomColorDelegate
        self.lockSwitch.setOn(false, animated: false)
        
        
    }

    // textfield delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.lockSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // actions:
    
    @IBAction func switchTapped(_ sender: AnyObject) {
        if !(sender as! UISwitch).isOn {
            self.lockableTextField.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

