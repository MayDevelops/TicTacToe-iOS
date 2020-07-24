//
//  PlayerData.swift
//  Tic-Tac-Toe
//
//  Created by JC May on 7/12/20.
//  Copyright © 2020 JC May. All rights reserved.
//

import Foundation

class PlayerData {
    static var playerXName: String = ""
    static var playerXWins:Int = 0
    
    static var playerOName: String = ""
    static var playerOWins:Int = 0
    
    static var activePlayer: Int = 1
    
    static var playerScores : [Int] = [0,0]
    static var playerNames = [String]()
}
