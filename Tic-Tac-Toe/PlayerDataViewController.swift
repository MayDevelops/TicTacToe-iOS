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
    
    @IBAction func buttonPressedTop(_ sender: Any) {
        PlayerData.playerXName = playerNameTop.text!
        playerNameTop.resignFirstResponder()
    }
    @IBAction func buttonPressedBot(_ sender: Any) {
           PlayerData.playerOName = playerNameBot.text!
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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
