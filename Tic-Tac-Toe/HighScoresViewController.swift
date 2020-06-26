//
//  HighScoresViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 6/22/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit

class HighScoresViewController: UIViewController {
    
    @IBOutlet weak var xScore: UILabel!
    @IBOutlet weak var oScore: UILabel!
    
    var GameData = GameViewController()
    var recievedXScore: Int = 0
    var recievedOScore: Int = 0

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        xScore.text = String(recievedXScore)
        oScore.text = String(recievedOScore)

        // Do any additional setup after loading the view.
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
