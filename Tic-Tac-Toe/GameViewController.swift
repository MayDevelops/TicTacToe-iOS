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
    @IBOutlet weak var gameBoard: UIImageView!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var winningLabel: UILabel!

    @IBOutlet weak var grid1: UIButton!
    @IBOutlet weak var grid2: UIButton!
    @IBOutlet weak var grid3: UIButton!
    @IBOutlet weak var grid4: UIButton!
    @IBOutlet weak var grid5: UIButton!
    @IBOutlet weak var grid6: UIButton!
    @IBOutlet weak var grid7: UIButton!
    @IBOutlet weak var grid8: UIButton!
    @IBOutlet weak var grid9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupConstraints() {
        gameBoard.center.x = self.view.center.x
        gameBoard.center.y = self.view.center.y
        grid1.frame = CGRect(x:10, y:230, width:100, height:100)
        grid2.frame = CGRect(x:137.5, y:230, width:100, height:100)
        grid3.frame = CGRect(x:265, y:230, width:100, height:100)
        grid4.frame = CGRect(x:10, y:357.5, width:100, height:100)
        grid5.frame = CGRect(x:137.5, y:357.5, width:100, height:100)
        grid6.frame = CGRect(x:265, y:357.5, width:100, height:100)
        grid7.frame = CGRect(x:10, y:485, width:100, height:100)
        grid8.frame = CGRect(x:137.5, y:485, width:100, height:100)
        grid9.frame = CGRect(x:265, y:485, width:100, height:100)
        
        playAgain.frame = CGRect(x: self.view.frame.size.width/2 - playAgain.frame.size.width/2, y: 700, width: playAgain.frame.width, height: playAgain.frame.height)
        
        winningLabel.frame = CGRect(x: self.view.frame.size.width/2 - winningLabel.frame.size.width/2, y: 92, width: winningLabel.frame.width, height: winningLabel.frame.height)
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
                    winningLabel.text = "\(PlayerData.playerXName) HAS WON!"
                    ScoreData.xScoreX += 1
                }
                else
                {
                    winningLabel.text = "\(PlayerData.playerOName) HAS WON!"
                    ScoreData.oScoreO += 1


                }
                
                playAgainButton.isHidden = false
                winningLabel.isHidden = false
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
            winningLabel.text = "IT WAS A DRAW"
            winningLabel.isHidden = false
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
        winningLabel.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
    }
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     

}

