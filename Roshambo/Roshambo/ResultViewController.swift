//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Pomme on 11/12/16.
//  Copyright © 2016 Yuanjie Xie. All rights reserved.
//
import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    // properties
    var playerInt: Int?
    var computerInt: Int?
    var playerWon: Bool?
    
    // Outlets
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var playerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let playerInt = self.playerInt , let computerInt = self.computerInt {
            // update computer label
            switch computerInt {
            case 1:
                self.computerLabel.text = "Computer chose Rock."
                break
            case 2:
                self.computerLabel.text = "Computer chose Scissors."
                break
            case 3:
                self.computerLabel.text = "Computer chose Paper."
                break
            default:
                break
            }
            
            // update player label
            switch playerInt {
            case 1:
                playerLabel.text = "You chose Rock."
                break
            case 2:
                playerLabel.text = "You chose Scissors."
                break
            case 3:
                playerLabel.text = "You chose Paper."
                break
            default:
                break
            }
            
            // same choice, tie situation
            if (playerInt == computerInt) {
                self.resultLabel.text = "It's a tie!"
                // update result image
                self.resultImage.image = UIImage(named: "itsATie")
            } else {
                // 3: 1 + 2 or 2 + 1 means rock and scissors
                let resultInt: Int = playerInt + computerInt
                
                // update result image
                switch resultInt {
                case 3:
                    // 3: 1 + 2 or 2 + 1 means rock and scissors
                    self.resultImage.image = UIImage(named: "RockCrushesScissors")
                    NSLog("adding: %d", resultInt)
                    break
                case 4:
                    // 4: 1 + 3 or 3 + 1 means rock and paper
                    self.resultImage.image = UIImage(named: "PaperCoversRock")
                    break
                case 5:
                    //5 : 2 + 3 or 3 + 2 means scissors and paper
                    self.resultImage.image = UIImage(named: "ScissorsCutPaper")
                    break
                default:
                    break
                }
                
                // compare to define who win
                switch playerInt {
                case 1:
                    playerWon = computerInt == 2 ? true : false
                    break
                case 2:
                    playerWon = computerInt == 3 ? true : false
                    break
                case 3:
                    playerWon = computerInt == 1 ? true : false
                    break
                default:
                    break
                }
                
                if playerWon! {
                    self.resultLabel.text = "You win!"
                } else {
                    self.resultLabel.text = "You lose!"
                }
            }
            
        }

        self.resultLabel.alpha = 0
        self.resultImage.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5) { 
            self.resultImage.alpha = 1
            self.resultLabel.alpha = 1
        }
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
