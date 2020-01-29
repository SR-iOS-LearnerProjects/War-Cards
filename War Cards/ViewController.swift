//
//  ViewController.swift
//  War Cards
//
//  Created by Sridatta Nallamilli on 17/11/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftScore = 0
    var rightScore = 0
    
    @IBAction func gameRules(_ sender: UIButton) {
        let rules = UIAlertController(title: "About the Game", message: "\n0️⃣ This game contains two sets of similar cards each, for Player and CPU.\n\n1️⃣ Game runs until a match is found between the two sets of cards i.e a TIE.\n\n2️⃣ The winner is declared based on the score generated until a Tie scenario.\n\n3️⃣ If both the players have the same score, no one wins.", preferredStyle: .alert)
        let start = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            print("Alert Displayed")
        }
        rules.addAction(start)
        self.present(rules, animated: true, completion: nil)
    }
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onDealClick(_ sender: UIButton) {
        
        let leftImageNum = Int.random(in: 2...14)
        let rightImageNum = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftImageNum)")
        rightImageView.image = UIImage(named: "card\(rightImageNum)")
        
        if leftImageNum > rightImageNum {
            
            leftScore += 1
            playerScore.text = String(leftScore)
            
        } else if leftImageNum < rightImageNum {
            
            rightScore += 1
            cpuScore.text = String(rightScore)
            
        } else {
            
            //
        }
        
       
        if leftImageNum == rightImageNum {
            
            let alert = UIAlertController(title: "War Cards", message: "\nOops!!🤭 It's a TIE...🙆‍♂️", preferredStyle: .alert)
                
            let playAgain = UIAlertAction(title: "👉 Find Winner 👈", style: .default) { (action) in
                
                self.playerScore.text = "0"
                self.cpuScore.text = "0"
                
//                if self.leftScore >= 20 || self.rightScore >= 20 {
                    
                if self.leftScore > self.rightScore {
                        let alert2 = UIAlertController(title: "War Cards", message: "\n🙌\n🏆 PLAYER WON 🏆", preferredStyle: .alert)
                        let play = UIAlertAction(title: "Dismiss", style: .default) { (action) in
                            print("Alert Displayed")
                        }
                        alert2.addAction(play)
                        self.present(alert2, animated: true, completion: nil)
                    } else if self.leftScore < self.rightScore {
                        let alert3 = UIAlertController(title: "War Cards", message: "\n👊\n🏆 CPU WON 🏆", preferredStyle: .alert)
                        let play = UIAlertAction(title: "Dismiss", style: .default) { (action) in
                            print("Alert Displayed")
                        
                        }
                        alert3.addAction(play)
                        self.present(alert3, animated: true, completion: nil)
                } else {
                    let alert4 = UIAlertController(title: "War Cards", message: "\n🙆‍♂️ 🙆‍♂️ 🙆‍♂️\nBetter Luck Next Time...", preferredStyle: .alert)
                    let play = UIAlertAction(title: "🤜 Play Again 🤛", style: .default) { (action) in
                        print("Alert Displayed")
                    }
                    alert4.addAction(play)
                    self.present(alert4, animated: true, completion: nil)
                }
                    
//                }
                self.leftScore = 0
                self.rightScore = 0
                
                print("Alert Displayed -> Scores set to Zero")
            }
            
            alert.addAction(playAgain)
            
            self.present(alert, animated: true, completion: nil)
        
        }
                
//        if playerScore >= 20 {
//
//            let alert = UIAlertController(title: "War Cards", message: "\nPlayer Wins...", preferredStyle: .alert)
//
//            let playAgain = UIAlertAction(title: "Play Again", style: .default) { (action) in
//
//                self.playerScore.text = String(0)
//                self.cpuScore.text = String(0)
//
//                print("Alert Displayed -> Player Wins")
//            }
//
//            alert.addAction(playAgain)
//
//            self.present(alert, animated: true, completion: nil)
//
//        } else {
//
//            let alert = UIAlertController(title: "War Cards", message: "\nCPU Wins...", preferredStyle: .alert)
//
//            let playAgain = UIAlertAction(title: "Play Again", style: .default) { (action) in
//
//                self.playerScore.text = String(0)
//                self.cpuScore.text = String(0)
//
//                print("Alert Displayed -> CPU Wins")
//            }
//
//            alert.addAction(playAgain)
//
//            self.present(alert, animated: true, completion: nil)
//
//        }
//
    }
    
    
    
}

