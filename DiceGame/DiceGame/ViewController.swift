//
//  ViewController.swift
//  DiceGame
//
//  Created by Wu, Meng Ju on 2020/3/17.
//  Copyright © 2020 Pitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!
    @IBOutlet weak var DiceImageView3: UIImageView!
    @IBOutlet weak var diceCountLabel1: UILabel!
    @IBOutlet weak var diceCountLabel2: UILabel!
    @IBOutlet weak var diceCountLabel3: UILabel!
    @IBOutlet weak var diceCountLabel4: UILabel!
    @IBOutlet weak var diceCountLabel5: UILabel!
    @IBOutlet weak var diceCountLabel6: UILabel!
    
    var diceCountArr:[Int] = [1, 0, 1, 0, 0, 1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func throwBtnPressed(_ sender: Any) {
        let dice1_point = Int.random(in: 1...6)
        let dice2_point = Int.random(in: 1...6)
        let dice3_point = Int.random(in: 1...6)
        
        DiceImageView1.image = UIImage(named: "Dice\(dice1_point)")
        DiceImageView2.image = UIImage(named: "Dice\(dice2_point)")
        DiceImageView3.image = UIImage(named: "Dice\(dice3_point)")
        
        let totalScore = dice1_point + dice2_point + dice3_point
        scoreLabel.text = "Score: \(totalScore)"
        
        // dice counting process
        diceCountArr = [0, 0, 0, 0, 0, 0]
        diceCountArr[dice1_point-1] += 1
        diceCountArr[dice2_point-1] += 1
        diceCountArr[dice3_point-1] += 1
        
        diceCountLabel1.text = String(diceCountArr[0])
        diceCountLabel2.text = String(diceCountArr[1])
        diceCountLabel3.text = String(diceCountArr[2])
        diceCountLabel4.text = String(diceCountArr[3])
        diceCountLabel5.text = String(diceCountArr[4])
        diceCountLabel6.text = String(diceCountArr[5])
        
    }

}

