//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Sebastian Hette on 10.10.2016.
//  Copyright © 2016 MAGNUMIUM. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    var activePlayer = 1 //Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var gameIsActive = true
    @IBOutlet weak var GameBoard: UIImageView!
    
    @IBOutlet weak var PlayAgain: UIButton!
    
    @IBOutlet weak var WinnerLabel: UILabel!

    @IBOutlet weak var Grid1: UIButton!
    @IBOutlet weak var Grid2: UIButton!
    @IBOutlet weak var Grid3: UIButton!
    @IBOutlet weak var Grid4: UIButton!
    @IBOutlet weak var Grid5: UIButton!
    @IBOutlet weak var Grid6: UIButton!
    @IBOutlet weak var Grid7: UIButton!
    @IBOutlet weak var Grid8: UIButton!
    @IBOutlet weak var Grid9: UIButton!
    
    
    
    func setupConstraints() {
        GameBoard.center.x = self.view.center.x
        GameBoard.center.y = self.view.center.y
        Grid1.frame = CGRect(x:10, y:230, width:100, height:100)
        Grid2.frame = CGRect(x:137.5, y:230, width:100, height:100)
        Grid3.frame = CGRect(x:265, y:230, width:100, height:100)
        Grid4.frame = CGRect(x:10, y:357.5, width:100, height:100)
        Grid5.frame = CGRect(x:137.5, y:357.5, width:100, height:100)
        Grid6.frame = CGRect(x:265, y:357.5, width:100, height:100)
        Grid7.frame = CGRect(x:10, y:485, width:100, height:100)
        Grid8.frame = CGRect(x:137.5, y:485, width:100, height:100)
        Grid9.frame = CGRect(x:265, y:485, width:100, height:100)
        
        PlayAgain.frame = CGRect(x: self.view.frame.size.width/2 - PlayAgain.frame.size.width/2, y: 700, width: PlayAgain.frame.width, height: PlayAgain.frame.height)
        
        WinnerLabel.frame = CGRect(x: self.view.frame.size.width/2 - WinnerLabel.frame.size.width/2, y: 92, width: WinnerLabel.frame.width, height: WinnerLabel.frame.height)
    }
    
    @IBAction func action(_ sender: AnyObject)
    {
        if (gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1)
            {
                sender.setImage(UIImage(named: "Cross.png"), for: UIControl.State())
                activePlayer = 2
            }
            else
            {
                sender.setImage(UIImage(named: "Nought.png"), for: UIControl.State())
                activePlayer = 1
            }
        }
        
        for combination in winningCombinations
        {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                gameIsActive = false
                
                if gameState[combination[0]] == 1
                {
                    WinnerLabel.text = "CROSS HAS WON!"
                    PlayerData.xScoreX += 1
                }
                else
                {
                    WinnerLabel.text = "NOUGHT HAS WON!"
                    PlayerData.oScoreO += 1


                }
                
                playAgainButton.isHidden = false
                WinnerLabel.isHidden = false
            }
        }
        
        gameIsActive = false
        
        for i in gameState
        {
            if i == 0
            {
                gameIsActive = true
                break
            }
        }
        
        if gameIsActive == false
        {
            WinnerLabel.text = "IT WAS A DRAW"
            WinnerLabel.isHidden = false
            playAgainButton.isHidden = false
        }
    }
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: AnyObject)
    {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        WinnerLabel.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     

}

