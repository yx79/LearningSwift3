//
//  ViewController.swift
//  TextApp
//
//  Created by Pomme on 11/12/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // mark: properties
    let zipcodeDelegate = ZipcodeTextfieldDelegate()
    let cashDelegate = CashTextfieldDelegate()
    
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipcodeTextField.delegate = self.zipcodeDelegate
        self.cashTextField.delegate = self.cashDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

