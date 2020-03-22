//
//  ViewController.swift
//  tictactoe
//
//  Created by Wu, Meng Ju on 2020/3/21.
//  Copyright © 2020 Pitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1_1: UIButton!
    @IBOutlet weak var btn1_2: UIButton!
    @IBOutlet weak var btn1_3: UIButton!
    @IBOutlet weak var btn2_1: UIButton!
    @IBOutlet weak var btn2_2: UIButton!
    @IBOutlet weak var btn2_3: UIButton!
    @IBOutlet weak var btn3_1: UIButton!
    @IBOutlet weak var btn3_2: UIButton!
    @IBOutlet weak var btn3_3: UIButton!
    
    var grid = Array(repeating: Array(repeating: 0, count: 3), count: 3)
    var player = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        regame()
    }
    
    @IBAction func regame() {
        btn1_1.setTitle("", for: .normal)
        btn1_2.setTitle("", for: .normal)
        btn1_3.setTitle("", for: .normal)
        btn2_1.setTitle("", for: .normal)
        btn2_2.setTitle("", for: .normal)
        btn2_3.setTitle("", for: .normal)
        btn3_1.setTitle("", for: .normal)
        btn3_2.setTitle("", for: .normal)
        btn3_3.setTitle("", for: .normal)
        grid = Array(repeating: Array(repeating: 0, count: 3), count: 3)
        player = 1
    }
    
    func winAlert(player: Int) {
        var winner = 1
        if player == -1 { winner = 2 }
        
        let controller = UIAlertController(title: nil, message: "Player \(winner) wins", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func btn1_1Pressed() {
        if grid[0][0] == 0 {
            if player == 1 { btn1_1.setTitle("O", for: .normal) } else { btn1_1.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[0][0] = player
        if checkGameEnd(x: 0, y: 0, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn1_2Pressed() {
        if grid[0][1] == 0 {
            if player == 1 { btn1_2.setTitle("O", for: .normal) } else { btn1_2.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[0][1] = player
        if checkGameEnd(x: 0, y: 1, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn1_3Pressed() {
        if grid[0][2] == 0 {
            if player == 1 { btn1_3.setTitle("O", for: .normal) } else { btn1_3.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[0][2] = player
        if checkGameEnd(x: 0, y: 2, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn2_1Pressed() {
        if grid[1][0] == 0 {
            if player == 1 { btn2_1.setTitle("O", for: .normal) } else { btn2_1.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[1][0] = player
        if checkGameEnd(x: 1, y: 0, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn2_2Pressed() {
        if grid[1][1] == 0 {
            if player == 1 { btn2_2.setTitle("O", for: .normal) } else { btn2_2.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[1][1] = player
        if checkGameEnd(x: 1, y: 1, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn2_3Pressed() {
        if grid[1][2] == 0 {
            if player == 1 { btn2_3.setTitle("O", for: .normal) } else { btn2_3.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[1][2] = player
        if checkGameEnd(x: 1, y: 2, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn3_1Pressed() {
        if grid[2][0] == 0 {
            if player == 1 { btn3_1.setTitle("O", for: .normal) } else { btn3_1.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[2][0] = player
        if checkGameEnd(x: 2, y: 0, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn3_2Pressed() {
        if grid[2][1] == 0 {
            if player == 1 { btn3_2.setTitle("O", for: .normal) } else { btn3_2.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[2][1] = player
        if checkGameEnd(x: 2, y: 1, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    @IBAction func btn3_3Pressed() {
        if grid[2][2] == 0 {
            if player == 1 { btn3_3.setTitle("O", for: .normal) } else { btn3_3.setTitle("X", for: .normal) }
        } else { print("Choose another one!") }
        grid[2][2] = player
        if checkGameEnd(x: 2, y: 2, player: player) { winAlert(player: player) }
        player *= (-1)
    }
    
    func checkGameEnd(x: Int, y: Int, player: Int) -> Bool {
        // row
        var check = true
        for j in (0...2) {
            if grid[x][j] != player {
                check = false
            }
        }
        if check { return true }
        
        // col
        check = true
        for i in (0...2) {
            if grid[i][y] != player {
                check = false
            }
        }
        if check { return true }
        
        // diagnal
        check = true
        if x == y {
            for i in (0...2) {
                if grid[i][i] != player {
                    check = false
                }
            }
        } else { check = false }
        if check { return true }
        
        // reverse diagnal
        check = true
        if x + y == 2 {
            for i in (0...2) {
                if grid[i][2-i] != player {
                    check = false
                }
            }
        } else { check = false }
        if check { return true }
        
        return false
    }

}

