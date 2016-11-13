//
//  PlayViewController.swift
//  Roshambo
//
//  Created by Pomme on 11/12/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // generate computer choice
    func randomComputer() -> Int {
        // Generate a random number Int32 using arc4random
        let random = 1 + arc4random() % 3
        
        // return a more convenient Int
        return Int(random)
        
    }
    
    @IBAction func pickPaper(_ sender: AnyObject) {
        performSegue(withIdentifier: "PlayerPaperSegue", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        if segue.identifier == "PlayerScissorsSegue" {
            controller.playerInt = 2
        }
        if segue.identifier == "PlayerPaperSegue" {
            controller.playerInt = 3
        }
        
        controller.computerInt = randomComputer()
        
    }
    
    // user pick Rock
    @IBAction func pickRock() {
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.playerInt = 1
        controller.computerInt = randomComputer()
       
        present(controller, animated: true, completion: nil)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
