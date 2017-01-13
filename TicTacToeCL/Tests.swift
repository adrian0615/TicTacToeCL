//
//  Tests.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation





func runTests() {
    let userInput = UserInput()
    let game = TicTacToeGame(currentBoard: Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty))
    let nameTest1 = userInput.choosePlayerXName(prompt: userInput.enterPlayerX)
    print(nameTest1)
    let nameTest2 = userInput.choosePlayerOName(prompt: userInput.enterPlayerO)
    print(nameTest2)
    
    
    //type the 9 different numbers as string for entry to test
    if testEnterPlayerXSpot(entry: "9") == true {
    print(game.currentBoard)
    }
    
    //type the 9 different numbers as string for entry to test
    if testEnterPlayerOSpot(entry: "9") == true {
        print(game.currentBoard)
    }
    //type in yes or no in the paramerter to test
    if testAskUserYesOrNo(string: "NO") == true {
    print(true)
    } else {
        print(false)
    }
    
}


func testEnterPlayerXSpot(entry: String) -> Bool {
    var takeSquare: Bool = false
    
    if entry == "1" {
        takeSquare = game.currentBoard.takeSlot(0, 0, .x)
        
    } else if entry == "2" {
        takeSquare = game.currentBoard.takeSlot(0, 1, .x)
        
    } else if entry == "3" {
        takeSquare = game.currentBoard.takeSlot(0, 2, .x)
        
    } else if entry == "4" {
        takeSquare = game.currentBoard.takeSlot(1, 0, .x)
    } else if entry == "5" {
        takeSquare = game.currentBoard.takeSlot(1, 1, .x)
        
    } else if entry == "6" {
        takeSquare = game.currentBoard.takeSlot(1, 2, .x)
        
    } else if entry == "7" {
        takeSquare = game.currentBoard.takeSlot(2, 0, .x)
        
    } else if entry == "8" {
        takeSquare = game.currentBoard.takeSlot(2, 1, .x)
        
    } else if entry == "9" {
        takeSquare = game.currentBoard.takeSlot(2, 2, .x)
        
    } else {
        print("You didn't enter a square. Please try again!")
        
    }
    return takeSquare
}

func testEnterPlayerOSpot(entry: String) -> Bool {
    
    var takeSquare: Bool = true
    
    
    if entry == "1" {
        takeSquare = game.currentBoard.takeSlot(0, 0, .o)
        
    } else if entry == "2" {
        takeSquare = game.currentBoard.takeSlot(0, 1, .o)
        
    } else if entry == "3" {
        takeSquare = game.currentBoard.takeSlot(0, 2, .o)
        
    } else if entry == "4" {
        takeSquare = game.currentBoard.takeSlot(1, 0, .o)
    } else if entry == "5" {
        takeSquare = game.currentBoard.takeSlot(1, 1, .o)
        
    } else if entry == "6" {
        takeSquare = game.currentBoard.takeSlot(1, 2, .o)
        
    } else if entry == "7" {
        takeSquare = game.currentBoard.takeSlot(2, 0, .o)
        
    } else if entry == "8" {
        takeSquare = game.currentBoard.takeSlot(2, 1, .o)
        
    } else if entry == "9" {
        takeSquare = game.currentBoard.takeSlot(2, 2, .o)
    } else {
        print("You didn't enter a square. Please try again!")
    }
    return takeSquare
}

func testAskUserYesOrNo(string: String) -> Bool {
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
