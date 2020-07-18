//
//  PlayerDataViewController.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 7/12/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import UIKit

class PlayerDataViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var gameBoard: UIImageView!
    
    @IBOutlet weak var playerNameTop: UITextField!
    @IBOutlet weak var charSelectorTop: UISegmentedControl!
    @IBOutlet weak var playerNameBot: UITextField!
    @IBOutlet weak var charSelectorBot: UISegmentedControl!
    @IBOutlet weak var charSelectorWho: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpConstraints()
        SetUpTextDelegates()
        SetUpSegmentedControls()
        playerNameTop.returnKeyType = UIReturnKeyType.done
        playerNameBot.returnKeyType = UIReturnKeyType.done
        
        // Do any additional setup after loading the view.
    }
    
    
    func SetUpConstraints() {
        gameBoard.alpha = 0.75
        gameBoard.center.x = self.view.center.x
        gameBoard.center.y = self.view.center.y
        
    }
    
    func SetUpTextDelegates() {
        playerNameTop.delegate = self
        playerNameBot.delegate = self
    }
    
    func SetUpSegmentedControls() {
        charSelectorTop.selectedSegmentIndex = 0
        charSelectorBot.selectedSegmentIndex = 1
    }
    
    @IBAction func NameSorting(_ sender: Any) {
        if charSelectorTop.selectedSegmentIndex == 0 {
            PlayerData.playerXName = playerNameTop.text!
            PlayerData.playerOName = playerNameBot.text!
            
        } else if charSelectorTop.selectedSegmentIndex == 1 {
            PlayerData.playerXName = playerNameBot.text!
            PlayerData.playerOName = playerNameTop.text!
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func CharSelectorTop(_ sender: Any) {
        if charSelectorTop.selectedSegmentIndex == 0 {
            charSelectorBot.selectedSegmentIndex = 1
            
            
        } else if charSelectorTop.selectedSegmentIndex == 1 {
            charSelectorBot.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func CharSelectorBot(_ sender: Any) {
        if charSelectorBot.selectedSegmentIndex == 0 {
            charSelectorTop.selectedSegmentIndex = 1
            
            
        } else if charSelectorBot.selectedSegmentIndex == 1 {
            charSelectorTop.selectedSegmentIndex = 0
        }
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
