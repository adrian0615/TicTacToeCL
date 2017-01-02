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
    
    
    enterPlayerXSpot(prompt: "XSPOT")
    print(currentBoard)
    
    enterPlayerOSpot(prompt: "XSPOT")
    print(currentBoard)
    
    let yesNo = askUserYesOrNo()
    print(String(yesNo))
    
    
    
    let playTest = play()
    print(playTest)
    
    
    let multiPlayTest = playThrough()
    print(String(describing: multiPlayTest))
    
    
}
