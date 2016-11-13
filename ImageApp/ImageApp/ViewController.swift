//
//  ViewController.swift
//  ImageApp
//
//  Created by Pomme on 11/11/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func imageSelectButton(_ sender: AnyObject) {
        let pickImageController = UIImagePickerController()
        self.present(pickImageController, animated: true) {
        }
    }
    
    @IBAction func alertView(_ sender: AnyObject) {
        let alertController = UIAlertController()
        alertController.title = "Delete Alert!"
        alertController.message = "The deletion cannot be recovered."
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            action in self.dismiss(animated: true, completion: nil)
        }
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive) {
            action in self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

