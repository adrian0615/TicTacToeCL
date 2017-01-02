//
//  Board.swift
//  TicTacToeCL
//
//  Created by Adrian McDaniel on 1/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


struct Board : Equatable, CustomStringConvertible {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: Board, rhs: Board) -> Bool {
        return lhs.slots == rhs.slots && lhs.lastPlayed == rhs.lastPlayed
    }
    
    
    
    var slots: [Marker]
    var lastPlayed = Marker.empty
    
    
    enum Marker : CustomStringConvertible {
        case x
        case o
        case empty
        
        var description: String {
            switch self {
            case .x:
                return "x"
            case .o:
                return "o"
            case .empty:
                return " "
            }
        }
    }
    
    subscript(row: Int, column: Int) -> Marker {
        get{
            if row < 0 || row > 2 {
                fatalError("Not a spot on the board")
            }
            return slots[(row * 3) + column]
        }
        set {
            slots[(row * 3) + column] = newValue
        }
        
    }
    
    var description: String {
        let horizontalLine = "-----"
        let lineOne = "\(slots[0])|\(slots[1])|\(slots[2])"
        let lineTwo = "\(slots[3])|\(slots[4])|\(slots[5])"
        let lineThree = "\(slots[6])|\(slots[7])|\(slots[8])"
        return "\(lineOne)\n\(horizontalLine)\n\(lineTwo)\n\(horizontalLine)\n\(lineThree)"
    }
    
    
    
    mutating func takeSlot(_ row: Int, _ column: Int, _ marker: Marker) ->  Bool {
        guard row < 3 && column < 3 else {
            return false }
        if marker == self.lastPlayed || self[row, column] != .empty {
            print("*******THAT SLOT IS TAKEN!  TRY AGAIN********")
            return false
        } else {
            self[row, column] = marker
            self.lastPlayed = marker
            return true
        }
    }
    
    
}
