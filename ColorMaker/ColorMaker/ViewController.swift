//
//  ViewController.swift
//  ColorMaker
//
//  Created by Pomme on 11/11/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorView.layer.borderWidth = 1
        self.colorView.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    
    
    
    @IBAction func SliderChanged(_ sender: AnyObject) {
        let r: Float = self.redSlider.value
        let cgr: CGFloat = CGFloat(r)
        self.redLabel.text = "\(r)"
        
        
        let g: Float = self.greenSlider.value
        let cgg: CGFloat = CGFloat(g)
        self.greenLabel.text = "\(g)"
        
        let b: Float = self.blueSlider.value
        let cgb: CGFloat = CGFloat(b)
        self.blueLabel.text = "\(b)"
        
        colorView.backgroundColor = UIColor(red: cgr, green: cgg, blue: cgb, alpha: 1)

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

