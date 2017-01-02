//
//  Game.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


var board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)

var currentBoard = board


let letsPlay = "TIC TAC TOE\n"

let instructions = "Remember to press 'return' after all entries.\n"


let enterPlayerX = "Please enter a name for Player X."
let playerXName = choosePlayerXName(prompt: enterPlayerX)



let enterPlayerO = "Please enter a name for Player O."
let playerOName = "\(choosePlayerOName(prompt: enterPlayerO))\n"


let placement = "Enter 1 for UpperLeftCorner, 2 for UpperMiddle, 3 for UpperRightCorner, 4 for MiddleLeft, 5 for CenterSquare, 6 for MiddleRight, 7 for BottomLeftCorner, 8 for BottomMiddle, 9 for BottomRightCorner."





func choosePlayerXName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}


func choosePlayerOName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}



func askUserYesOrNo() -> Bool {
    print("Would you like to play again?")
    print("Type 'y' for YES or 'n' for No.")
    var output: Bool? = nil
    
    while output == nil {
        if let string: String = readLine(strippingNewline: true) {
            switch string {
            case "y", "Y", "yes", "YES":
                output = true
            case "n", "No", "no", "NO":
                output = false
            default:
                output = nil
                
                
            }
        }
    }
    return output!
}







func enterPlayerXSpot(prompt: String) -> Bool {
    print(prompt)
    print(placement)
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

func enterPlayerOSpot(prompt: String) -> Bool {
    print(prompt)
    print(placement)
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










func play() -> String {
    
    currentBoard = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)

    print(letsPlay)
    
    print(instructions)
    
    
    
    let playerXName = choosePlayerXName(prompt: enterPlayerX)
    
    let playerOName = choosePlayerOName(prompt: enterPlayerO)
    
    let playerXTurn = "It's \(playerXName)'s turn to select a spot on the board."
    let playerOTurn = "It's \(playerOName)'s turn to select a spot on the board."
    print("\n")
    print("\(currentBoard)\n")
    print("\n")
    
    func isThereAWinner() -> (Bool, String) {
        
        if currentBoard[0, 0] == .x && currentBoard[0, 1] == .x && currentBoard[0, 2] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
        } else if currentBoard[1, 0] == .x && currentBoard[1, 1] == .x && currentBoard[1, 2] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
        } else if currentBoard[2, 0] == .x && currentBoard[2, 1] == .x && currentBoard[2, 2] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
        } else if currentBoard[0, 0] == .x && currentBoard[1, 1] == .x && currentBoard[2, 2] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
        } else if currentBoard[0, 2] == .x && currentBoard[1, 1] == .x && currentBoard[2, 0] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
        } else if currentBoard[0, 0] == .x && currentBoard[1, 0] == .x && currentBoard[2, 0] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
            
        } else if currentBoard[0, 1] == .x && currentBoard[1, 1] == .x && currentBoard[2, 1] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
            
        } else if currentBoard[0, 2] == .x && currentBoard[1, 2] == .x && currentBoard[2, 2] == .x {
            print("\(playerXName) wins!")
            return (true, "\(playerXName) wins!")
            
        } else if currentBoard[0, 0] == .o && currentBoard[0, 1] == .o && currentBoard[0, 2] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[1, 0] == .o && currentBoard[1, 1] == .o && currentBoard[1, 2] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[2, 0] == .o && currentBoard[2, 1] == .o && currentBoard[2, 2] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[0, 0] == .o && currentBoard[1, 1] == .o && currentBoard[2, 2] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[0, 2] == .o && currentBoard[1, 1] == .o && currentBoard[2, 0] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[0, 0] == .o && currentBoard[1, 0] == .o && currentBoard[2, 0] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[0, 1] == .o && currentBoard[1, 1] == .o && currentBoard[2, 1] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
            
        } else if currentBoard[0, 2] == .o && currentBoard[1, 2] == .o && currentBoard[2, 2] == .o {
            print("\(playerOName) wins!")
            return (true, "\(playerOName) wins!")
        } else {
            return (false, "")
        }
        
    }
    
    func boardFull() -> (Bool, String) {
        if currentBoard[0, 0] != .empty && currentBoard[0, 1] != .empty && currentBoard[0, 2] != .empty  && currentBoard[1, 0] != .empty && currentBoard[1, 1] != .empty && currentBoard[1, 2] != .empty && currentBoard[2, 0] != .empty && currentBoard[2, 1] != .empty && currentBoard[2, 2] != .empty {
            print("The game ended in a draw.")
            return (true, "draw")
        } else {
            return (false, "")
        }
    }
    
    
    func recordResult(_ gameOver: Bool, _ result: String) -> String? {
        if gameOver == true && result == "\(playerXName) wins!" {
            return result
        } else if gameOver == true && result == "\(playerOName) wins!" {
            return result
        } else if gameOver == true && result == "draw" {
            return result
        } else {
            return nil
        }
        
    }
    
    func finalResult() -> String? {
        var result: String = ""
        
        if isThereAWinner() == (true, "\(playerXName) wins!") {
            print("Would you like to play again?")
            result = recordResult(true, "\(playerXName) wins!")!
            return result
        } else if isThereAWinner() == (true, "\(playerOName) wins!") {
            print("Would you like to play again?")
            result = recordResult(true, "\(playerOName) wins!")!
            return result
        } else if boardFull() == (true, "draw") {
            print("Would you like to play again?")
            result = recordResult(true, "draw")!
            return result
            
        } else {
            return nil
        }
    }
    
    
    while boardFull() != (true, "draw") && isThereAWinner() == (false, "") {
        
        if currentBoard.lastPlayed == .empty || currentBoard.lastPlayed == .o {
            
            enterPlayerXSpot(prompt: "\(playerXTurn)\n")
            print("\n")
            print("\(currentBoard)\n")
            print("\n")
            
        } else {
            
            enterPlayerOSpot(prompt: "\(playerOTurn)\n")
            print("\n")
            print("\(currentBoard)\n")
            print("\n")
        }
    }
    
    print("\n")
    print("\(currentBoard)\n")
    print("\n")
    
    
    
    
    
    return finalResult()!
    
}


func playThrough() {
    var shouldContinue = true
    var count = 0
    var gameResults: String = ""
    var totalScores: [Int: String] = [:]
    
    while shouldContinue {
        gameResults = play()
        shouldContinue = askUserYesOrNo()
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




