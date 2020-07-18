//
//  MainViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 6/23/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var toGame: UIButton!
    @IBOutlet weak var toHighScores: UIButton!
    @IBOutlet weak var gameBoard: UIImageView!
    @IBOutlet weak var entireView: UIView!
    
    
    
    func SetUpConstraints() {
        gameBoard.alpha = 0.75
        toGame.layer.cornerRadius = 10
        toHighScores.layer.cornerRadius = 10
        gameBoard.center.x = self.view.center.x
        gameBoard.center.y = self.view.center.y
        
        toGame.frame = CGRect(x: self.view.frame.size.width/2 - toGame.frame.size.width/2, y: 230, width: 100, height: 100)
        toHighScores.frame = CGRect(x: self.view.frame.size.width/2 - toHighScores.frame.size.width/2, y: 357.5, width: 100, height: 100)
    }
    
    //hellotest
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpConstraints()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        SpacingForTerminal()
        print("--------------FIREBASE DATA ABOVE-----------------")
        print("\n")
        print("\n")
    }
    func SpacingForTerminal() {
        for _ in 1...10 {
            print("\n")
        }
        
    }
}
