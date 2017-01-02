//
//  Tests.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation



func runTests() {
    let nameTest1 = choosePlayerXName(prompt: enterPlayerX)
    print(nameTest1)
    let nameTest2 = choosePlayerOName(prompt: enterPlayerO)
    print(nameTest2)
    
    
    if enterPlayerXSpot(prompt: "XSPOT") == true {
    print(currentBoard)
    }
    
    if enterPlayerOSpot(prompt: "XSPOT") == true {
    print(currentBoard)
    }
    
    let yesNo = askUserYesOrNo()
    print(String(yesNo))
    
    
    
    let playTest = play()
    print(playTest)
    
    
    
}
