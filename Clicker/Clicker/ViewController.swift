//
//  ViewController.swift
//  Clicker
//
//  Created by Pomme on 11/11/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0;
    var label = UILabel()

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // colorView
        self.colorView.layer.borderWidth = 2.0
        self.colorView.layer.borderColor = UIColor.red.cgColor
        
        // label1
        label.frame = CGRect.init(x: 60, y: 60, width: 150, height: 50)
        label.text = "0 like"
        //label.backgroundColor = UIColor.lightGray
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        
        // Button like
        let buttonLike = UIButton()
        buttonLike.frame = CGRect.init(x: 60, y: 120, width: 150, height: 50)
        buttonLike.setTitle("Like👍🏼", for: .normal)
        buttonLike.setTitleColor(UIColor.brown, for: .normal)
        buttonLike.backgroundColor = UIColor.cyan
        self.view.addSubview(buttonLike)
        
        buttonLike.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Button Dislike
        let buttonDislike = UIButton()
        buttonDislike.frame = CGRect.init(x: 60, y: 180, width: 150, height: 50)
        buttonDislike.setTitleColor(UIColor.blue, for: .normal)
        buttonDislike.setTitle("Dislike👎🏼", for: .normal)
        buttonDislike.backgroundColor = UIColor.brown
        self.view.addSubview(buttonDislike)
        
        buttonDislike.addTarget(self, action: #selector(ViewController.decreaseCount), for: UIControlEvents.touchUpInside)
    }
    
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count) likes"
        self.view.backgroundColor = UIColor.white
    }
    
    func decreaseCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count) likes"
        self.view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func changeRed(_ sender: AnyObject) {
        if self.redSwitch == nil{
            return
        }
        
        
        let r : CGFloat = self.redSwitch.isOn ? 1 : 0
        let g : CGFloat = self.greenSwitch.isOn ? 1 : 0
        let b : CGFloat = self.blueSwitch.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    
    
    
    
    
    
    
    
    
}

