//
//  PlayerDataViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 7/12/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit

class PlayerDataViewController: UIViewController {
    @IBOutlet weak var gameBoard: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpConstraints()

        // Do any additional setup after loading the view.
    }
    
    func SetUpConstraints() {
        gameBoard.alpha = 0.75
        gameBoard.center.x = self.view.center.x
        gameBoard.center.y = self.view.center.y
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
