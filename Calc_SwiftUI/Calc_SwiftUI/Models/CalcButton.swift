//
//  CalcButton.swift
//  Calc_SwiftUI
//
//  Created by Akash Shrestha on 2024-10-24.
//

import SwiftUI

enum CalcButton: CaseIterable, Identifiable {
    case divide
    case multiply
    case subtract
    case add
    case equals
    case remainder
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ac
    case minusPlus
    case dot
    
    var id: String {
        switch self {
        case .divide: return "divide"
        case .multiply: return "multiply"
        case .subtract: return "subtract"
        case .add: return "add"
        case .equals: return "equals"
        case .remainder: return "remainder"
        case .zero: return "zero"
        case .one: return "one"
        case .two: return "two"
        case .three: return "three"
        case .four: return "four"
        case .five: return "five"
        case .six: return "six"
        case .seven: return "seven"
        case .eight: return "eight"
        case .nine: return "nine"
        case .ac: return "ac"
        case .minusPlus: return "minusPlus"
        case .dot: return "dot"
        }
    }
    
    var title: String {
        switch self {
        case .divide: return "÷"
        case .multiply: return "×"
        case .subtract: return "-"
        case .add: return "+"
        case .equals: return "="
        case .remainder: return "%"
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .ac: return "AC"
        case .minusPlus: return "±"
        case .dot: return "."
        }
    }
    
    var color: Color {
        switch self {
        case .divide, .multiply, .subtract, .add, .equals, .remainder: return .orange
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine: return Color(.lightGray)
        case .ac, .minusPlus, .dot: return .gray
        }
    }
}
