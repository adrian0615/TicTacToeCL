//
//  Game.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


struct TicTacToeGame {
    
    var currentBoard: Board
    
    let userInput = UserInput()
    
    
    
    
    mutating func enterPlayerXSpot(prompt: String) -> Bool {
        print(prompt)
        print(userInput.placement)
        var takeSquare: Bool = false
        let entry = readLine(strippingNewline: true)
        
        if entry == "1" {
            takeSquare = currentBoard.takeSlot(0, 0, .x)
            
        } else if entry == "2" {
            takeSquare = currentBoard.takeSlot(0, 1, .x)
            
        } else if entry == "3" {
            takeSquare = currentBoard.takeSlot(0, 2, .x)
            
        } else if entry == "4" {
            takeSquare = currentBoard.takeSlot(1, 0, .x)
        } else if entry == "5" {
            takeSquare = currentBoard.takeSlot(1, 1, .x)
            
        } else if entry == "6" {
            takeSquare = currentBoard.takeSlot(1, 2, .x)
            
        } else if entry == "7" {
            takeSquare = currentBoard.takeSlot(2, 0, .x)
            
        } else if entry == "8" {
            takeSquare = currentBoard.takeSlot(2, 1, .x)
            
        } else if entry == "9" {
            takeSquare = currentBoard.takeSlot(2, 2, .x)
            
        } else {
            print("You didn't enter a square. Please try again!")
            
        }
        return takeSquare
    }
    
    mutating func enterPlayerOSpot(prompt: String) -> Bool {
        print(prompt)
        print(userInput.placement)
        var takeSquare: Bool = true
        let entry = readLine(strippingNewline: true)
        
        if entry == "1" {
            takeSquare = currentBoard.takeSlot(0, 0, .o)
            
        } else if entry == "2" {
            takeSquare = currentBoard.takeSlot(0, 1, .o)
            
        } else if entry == "3" {
            takeSquare = currentBoard.takeSlot(0, 2, .o)
            
        } else if entry == "4" {
            takeSquare = currentBoard.takeSlot(1, 0, .o)
        } else if entry == "5" {
            takeSquare = currentBoard.takeSlot(1, 1, .o)
            
        } else if entry == "6" {
            takeSquare = currentBoard.takeSlot(1, 2, .o)
            
        } else if entry == "7" {
            takeSquare = currentBoard.takeSlot(2, 0, .o)
            
        } else if entry == "8" {
            takeSquare = currentBoard.takeSlot(2, 1, .o)
            
        } else if entry == "9" {
            takeSquare = currentBoard.takeSlot(2, 2, .o)
        } else {
            print("You didn't enter a square. Please try again!")
        }
        return takeSquare
    }
    
    func recordResult(xName: String, oName: String, gameOver: Bool, result: String) -> String? {
        if gameOver == true && result == "\(xName) wins!" {
            return result
        } else if gameOver == true && result == "\(oName) wins!" {
            return result
        } else if gameOver == true && result == "draw" {
            return result
        } else {
            return nil
        }
        
    }
    
    
    mutating func finalResult(xName: String, oName: String) -> String? {
        var result: String = ""
        
        if currentBoard.isThereAWinner(xName: xName, oName: oName) == (true, "\(xName) wins!") {
            print("Would you like to play again?")
            result = recordResult(xName: xName, oName: oName, gameOver: true, result: "\(xName) wins!")!
            return result
        } else if currentBoard.isThereAWinner(xName: xName, oName: oName) == (true, "\(oName) wins!") {
            print("Would you like to play again?")
            result = recordResult(xName: xName, oName: oName, gameOver: true, result: "\(oName) wins!")!
            return result
        } else if currentBoard.boardFull() == (true, "draw") {
            print("Would you like to play again?")
            result = recordResult(xName: xName, oName: oName, gameOver: true, result: "draw")!
            return result
            
        } else {
            return nil
        }
    }
    
    
    
    
    
    mutating func play() -> String {
        
        currentBoard = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        
        print(userInput.letsPlay)
        
        print(userInput.instructions)
        
        
        
        let playerXName = userInput.choosePlayerXName(prompt: userInput.enterPlayerX)
        
        let playerOName = userInput.choosePlayerOName(prompt: userInput.enterPlayerO)
        
        let playerXTurn = "It's \(playerXName)'s turn to select a spot on the board."
        let playerOTurn = "It's \(playerOName)'s turn to select a spot on the board."
        print("\n")
        print("\(currentBoard)\n")
        print("\n")
        
        
        
        
        while currentBoard.boardFull() != (true, "draw") && currentBoard.isThereAWinner(xName: playerXName, oName: playerOName) == (false, "") {
            
            if currentBoard.lastPlayed == .empty || currentBoard.lastPlayed == .o {
                
                _ = enterPlayerXSpot(prompt: "\(playerXTurn)\n")
                print("\n")
                print("\(currentBoard)\n")
                print("\n")
                
            } else {
                
                _ = enterPlayerOSpot(prompt: "\(playerOTurn)\n")
                print("\n")
                print("\(currentBoard)\n")
                print("\n")
            }
        }
        
        print("\n")
        print("\(currentBoard)\n")
        print("\n")
        
        
        
        
        
        return finalResult(xName: playerXName, oName: playerOName)!
        
    }
    
    
    mutating func playThrough() {
        var shouldContinue = true
        var count = 0
        var gameResults: String = ""
        var totalScores: [Int: String] = [:]
        
        while shouldContinue {
            gameResults = play()
            shouldContinue = userInput.askUserYesOrNo()
            if shouldContinue == true {
                count += 1
                totalScores[count] = gameResults
            } else {
                count += 1
                totalScores[count] = gameResults
            }
            
        }
        print(totalScores)
    }
    
}


