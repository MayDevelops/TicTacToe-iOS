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
    
    var xPlayerScore = 0;
    var oPlayerScore = 0;
    
    
    @IBAction func IncrementX(_ sender: Any) {
        xScore.text = String(xPlayerScore)
        xPlayerScore += 1;
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
