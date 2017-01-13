//
//  BoardTests.swift
//  TicTacToeForBoardTests
//
//  Created by Adrian McDaniel on 1/12/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation
import XCTest
@testable import TicTacToeForBoardTests

class BoardTests: XCTestCase {
    
    func testPlaceXMarkerRow0Column0() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(0, 0, .x)
        
        let expected = Board(slots: [.x, .empty, .empty, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .x)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceOMarkerRow0Column1() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(0, 1, .o)
        
        let expected = Board(slots: [.empty, .o, .empty, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .o)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceXMarkerRow0Column2() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(0, 2, .x)
        
        let expected = Board(slots: [.empty, .empty, .x, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .x)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceOMarkerRow1Column0() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(1, 0, .o)
        
        let expected = Board(slots: [.empty, .empty, .empty, .o, .empty, .empty, .empty, .empty,.empty], lastPlayed: .o)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceXMarkerRow1Column1() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(1, 1, .x)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .x, .empty, .empty, .empty,.empty], lastPlayed: .x)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceOMarkerRow1Column2() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(1, 2, .o)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .empty, .o, .empty, .empty,.empty], lastPlayed: .o)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceXMarkerRow2Column0() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(2, 0, .x)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .x, .empty,.empty], lastPlayed: .x)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceOMarkerRow2Column1() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(2, 1, .o)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .o,.empty], lastPlayed: .o)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceXMarkerRow2Column2() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(2, 2, .x)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .empty,.x], lastPlayed: .x)
        
        XCTAssertEqual(gameBoard, expected)
        XCTAssertEqual(success, true)
        
    }
    
    func testPlaceXMarkerRow0Column2False() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(0, 2, .x)
        
        let expected = Board(slots: [.empty, .empty, .x, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .o)
        
        XCTAssertEqual(success, true)
        XCTAssertNotEqual(gameBoard, expected)
        
    }
    
    func testPlaceXMarkerRow0Column3False() {
        var gameBoard: Board = Board(slots: Array(repeating: .empty, count: 9), lastPlayed: .empty)
        let success = gameBoard.takeSlot(0, 3, .x)
        
        let expected = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .x)
        
        XCTAssertNotEqual(gameBoard, expected)
        XCTAssertEqual(success, false)
        
    }
    
    func testBoardIsFull1() {
        var gameBoard = Board(slots: [.x, .o, .o, .x, .o, .x, .x, .o,.x], lastPlayed: .x)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testBoardIsFull2() {
        var gameBoard = Board(slots: [.o, .x, .x, .o, .x, .o, .x, .x,.o], lastPlayed: .x)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testBoardIsNotFull1() {
        var gameBoard = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .empty)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testBoardIsNotFull2() {
        var gameBoard = Board(slots: [.x, .empty, .empty, .o, .empty, .empty, .empty, .empty,.empty], lastPlayed: .o)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testBoardIsNotFull3() {
        var gameBoard = Board(slots: [.x, .o, .x, .o, .x, .o, .x, .o,.empty], lastPlayed: .o)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testBoardIsNotFull4() {
        var gameBoard = Board(slots: [.x, .o, .x, .o, .x, .empty, .x, .o,.empty], lastPlayed: .x)
        let result = gameBoard.boardFull()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testIsThereAWinnerRow0() {
        var gameBoard = Board(slots: [.x, .x, .x, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .x)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerRow1() {
        var gameBoard = Board(slots: [.empty, .empty, .empty, .o, .o, .o, .empty, .empty,.empty], lastPlayed: .o)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerRow2() {
        var gameBoard = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .x, .x, .x], lastPlayed: .x)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerColumn0() {
        var gameBoard = Board(slots: [.o, .empty, .empty, .o, .empty, .empty, .o, .empty,.empty], lastPlayed: .o)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerColumn1() {
        var gameBoard = Board(slots: [.empty, .x, .empty, .empty, .x, .empty, .empty, .x,.empty], lastPlayed: .x)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerColumn2() {
        var gameBoard = Board(slots: [.empty, .empty, .o, .empty, .empty, .o, .empty, .empty,.o], lastPlayed: .o)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerDiagonal() {
        var gameBoard = Board(slots: [.empty, .empty, .x, .empty, .x, .empty, .x, .empty,.empty], lastPlayed: .x)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereAWinnerDiagonal2() {
        var gameBoard = Board(slots: [.o, .empty, .empty, .empty, .o, .empty, .empty, .empty,.o], lastPlayed: .o)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, true)
        
    }
    
    func testIsThereNotWinner1() {
        var gameBoard = Board(slots: [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .empty,.empty], lastPlayed: .empty)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testIsThereNotWinner2() {
        var gameBoard = Board(slots: [.o, .x, .o, .o, .x, .x, .x, .o,.x], lastPlayed: .x)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    func testIsThereNotWinner3() {
        var gameBoard = Board(slots: [.x, .x, .o, .o, .empty, .empty, .empty, .empty,.empty], lastPlayed: .o)
        let result = gameBoard.isThereAWinner()
        
        
        XCTAssertEqual(result, false)
        
    }
    
    
    
    
}
