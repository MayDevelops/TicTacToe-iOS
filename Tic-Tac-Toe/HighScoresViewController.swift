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
    
   static let database = Database.database().reference()
    
    let databasePathUsers = "Users"
    
    var stringArray : [String : Any] = ["JC": 1 , "Maria" : 2 , "Keith" : 3 , "Kim" : 4]
    
    
    
    @IBAction func testButton(_ sender: Any) {
       //FIXME: Not using this right now, but keeping code here to reference in the future.
        
        //self.database.child("Users").childByAutoId().setValue(["username":"JC"])
        //self.database.child("Users").childByAutoId().setValue(["username":"Maria"])
        HighScoresViewController.self.database.child("UsersAndWins").setValue(stringArray) // this array of strings overwrites the 2 previous assignments in the database
        let objectData: [String: Int] = [PlayerData.playerNames[0] : PlayerData.playerScores[0] , PlayerData.playerNames[1] : PlayerData.playerScores[1]]
        
        HighScoresViewController.self.database.child("UsersAndWins").setValue(objectData)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HighScoresViewController.database.child("something").observeSingleEvent(of: .value, with: { snapshot in
            guard let value = snapshot.value as? [String: Any] else {
                return
            }
            
            print ("Value: \(value)")
        })
        
        //FIXME: Not using this right now, but keeping code here to reference in the future.
        let button = UIButton(frame: CGRect(x: 200, y:200, width: view.frame.size.width - 40, height: 50))
        button.setTitle("Test Entry", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .link
        view.addSubview(button)
        button.addTarget(self, action: #selector(addNewEntry), for: .touchUpInside)
        //--------------------------------------------------------------------------------
        
    }
    
    @objc private func addNewEntry() {
        //FIXME: Not using this right now, but keeping code here to reference in the future.

        let object: [String: Any] = [
            "name": "iOS Testy" as NSObject,
            "AnotherTest": "yeppers"
        ]
        HighScoresViewController.database.child("something").setValue(object)
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
