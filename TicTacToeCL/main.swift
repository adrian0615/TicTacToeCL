//
//  main.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation

let arguments = Array(CommandLine.arguments.dropFirst())

if !arguments.isEmpty && arguments[0] == "--run-tests" {
    runTests()
}

var game = TicTacToeGame(currentBoard: Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty))

game.playThrough()
