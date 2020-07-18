//
//  HighScoresViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 6/22/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit
import FirebaseDatabase

class HighScoresViewController: UIViewController {
    
    private let database = Database.database().reference()
    
    @IBOutlet weak var xScore: UILabel!
    @IBOutlet weak var oScore: UILabel!
    @IBOutlet weak var playerXName: UILabel!
    @IBOutlet weak var playerOName: UILabel!
    
    @IBAction func testButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        database.child("something").observeSingleEvent(of: .value, with: { snapshot in
            guard let value = snapshot.value as? [String: Any] else {
                return
            }
            
            print ("Value: \(value)")
        })
        xScore.text = String(ScoreData.xScoreX)
        oScore.text = String(ScoreData.oScoreO)
        playerXName.text = PlayerData.playerXName
        playerOName.text = PlayerData.playerOName
        
        print (PlayerData.playerOName) //DEBUG
        print (PlayerData.playerXName) //DEBUG
        
        let button = UIButton(frame: CGRect(x: 200, y:200, width: view.frame.size.width - 40, height: 50))
        button.setTitle("Test Entry", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .link
        view.addSubview(button)
        button.addTarget(self, action: #selector(addNewEntry), for: .touchUpInside)
        
        
        playerOName.frame = CGRect(x: 20, y:235, width: 150, height: 50)
    }
    
    @objc private func addNewEntry() {
        let object: [String: Any] = [
            "name": "iOS Testy" as NSObject,
            "AnotherTest": "yeppers"
        ]
        database.child("something").setValue(object)
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
