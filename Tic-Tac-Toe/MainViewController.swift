//
//  MainViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 6/23/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var ToGame: UIButton!
    @IBOutlet weak var ToHighScores: UIButton!
    @IBOutlet weak var GameBoard: UIImageView!
    @IBOutlet weak var EntireView: UIView!
    @IBOutlet weak var StackView: UIStackView!
    

    
    func SetUpConstraints() {
        GameBoard.alpha = 0.75
        ToGame.layer.cornerRadius = 10
        ToHighScores.layer.cornerRadius = 10
        GameBoard.center.x = self.view.center.x
        GameBoard.center.y = self.view.center.y
        
        ToGame.frame = CGRect(x: self.view.frame.size.width/2 - ToGame.frame.size.width/2, y: 230, width: 100, height: 100)
        ToHighScores.frame = CGRect(x: self.view.frame.size.width/2 - ToHighScores.frame.size.width/2, y: 357.5, width: 100, height: 100)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpConstraints()
        
        // Do any additional setup after loading the view.
    }
}
