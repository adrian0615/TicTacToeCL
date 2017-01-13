//
//  Game2.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/12/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


struct UserInput {
    
    let letsPlay = "TIC TAC TOE\n"
    let instructions = "Remember to press 'return' after all entries.\n"
    let enterPlayerX = "Please enter a name for Player X."
    let enterPlayerO = "Please enter a name for Player O."
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
}
