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
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ToGame.layer.cornerRadius = 10
        ToHighScores.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
}
