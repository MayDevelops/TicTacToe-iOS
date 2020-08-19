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
    static let ref = HighScoresViewController.database.child("Users&Scores")
    var userNameArray = [String]()
    var userScoreArray = [Any]()
    
    var databaseHandle:DatabaseHandle?
    
    var stringArray : [String : Int] = ["JC": 1 , "Maria" : 2 , "Keith" : 3 , "Kim" : 4]
    
    
    
    @IBAction func testButton(_ sender: Any) {
        //FIXME: Not using this right now, but keeping code here to reference in the future.
        
        //self.database.child("Users").childByAutoId().setValue(["username":"JC"])
        //self.database.child("Users").childByAutoId().setValue(["username":"Maria"])
        //HighScoresViewController.self.database.child("UsersAndScores").setValue(stringArray) // this array of strings overwrites the 2 previous assignments in the database
        //let objectData: [String: Int] = [PlayerData.playerNames[0] : PlayerData.playerScores[0] , PlayerData.playerNames[1] : PlayerData.playerScores[1]]
        //HighScoresViewController.self.database.child("UsersAndScores").setValue(objectData)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
         HighScoresViewController.database.child("Users&Scores").observeSingleEvent(of: .value, with: { snapshot in
         guard let value = snapshot.value as? [String: Int] else {
         return
         }
         
         print ("Value: \(value)")
         })
         */
        
        
        
        HighScoresViewController.database.child("Users&Scores").observe(.value, with: { (snapshot) in
            
            let usersAndScoresDictionary = snapshot.value as? [String : Int] ?? [:] //non sorted dictionary
            let sortedByValueDictionary = usersAndScoresDictionary.sorted { $0.1 > $1.1 } .map {$0} //this is the sorted dictionary
            
            print("Before Sorting...\n")
            let dictKeys = Array(usersAndScoresDictionary.keys)
            print (dictKeys)
            let dictValues = Array(usersAndScoresDictionary.values)
            print(dictValues)
            
            print("\nAfter Sorting...\n")
            print(sortedByValueDictionary)
            
            
            print ("\nNew testing for sorting and obtaining data...")
            let value = snapshot.value as? NSDictionary
            
            
            print (value)
          

            
            /*
             New idea is to:
             get the instance of the database using the snapshot.
             Get the dictionary of keys (in dictKeys).
             Load all of the keys into an array here locally.
             Then query the database for those keys.
             Each key will be an object...? and then assign a value to that object.
             Then assign the new created object to an array that contians the key as the username and the value as the wins.
             Then sort those objects by value.
             Then print those objects.
             */
          
            
            
        })
        
        
        
        
        
        
        
        
        
        
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
