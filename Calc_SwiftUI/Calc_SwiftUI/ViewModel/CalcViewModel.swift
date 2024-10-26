//
//  CalcViewModel.swift
//  Calc_SwiftUI
//
//  Created by Akash Shrestha on 2024-10-24.
//

import SwiftUI

enum Operation: String {
    case add, subtract, multiply, divide, remainder, dot, none
}

class CalcViewModel: ObservableObject {
    @Published var displayNumber: String = "0"
    private var currentOperation: Operation = .none
    private var previousNumber: Double = 0
    private var currentNumber: Double = 0
    private var isNewNumber: Bool = true
    
    func didTap(button: CalcButton) {
        switch button {
        case .ac:
            clearAll()
        case .add, .subtract, .multiply, .divide, .remainder:
            setOperation(button)
        case .equals:
            performOperation()
        case .dot:
            addDecimal()
        case .minusPlus:
            toggleNegative()
        default:
            appendNumber(button)
        }
    }
    
    private func clearAll() {
        displayNumber = "0"
        currentOperation = .none
        previousNumber = 0
        currentNumber = 0
        isNewNumber = true
    }
    
    private func setOperation(_ button: CalcButton) {
        currentOperation = converToOperation(button)
        previousNumber = Double(displayNumber) ?? 0
        isNewNumber = true
    }
    
    private func performOperation() {
        currentNumber = Double(displayNumber) ?? 0
        let result: String
        
        switch currentOperation {
        case .add:
            result = formatResult(previousNumber + currentNumber)
        case .subtract:
            result = formatResult(previousNumber - currentNumber)
        case .multiply:
            result = formatResult(previousNumber * currentNumber)
        case .divide:
            result = formatResult(previousNumber / currentNumber)
        case .remainder:
            result = formatResult(previousNumber.truncatingRemainder(dividingBy: currentNumber))
        default:
            result = String(currentNumber)
        }
        
        displayNumber = formatResult(Double(result) ?? 0)
        isNewNumber = true
        currentOperation = .none
    }
    
    private func formatResult(_ result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(result))
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    private func toggleNegative() {
        if displayNumber != "0" {
            if displayNumber.contains("-") {
                displayNumber.removeFirst()
            } else {
                displayNumber = "-" + displayNumber
            }
        }
    }
    
    private func addDecimal() {
        if isNewNumber {
            displayNumber = "0."
            isNewNumber = false
        } else if !displayNumber.contains(".") {
            displayNumber += "."
        }
    }
    
    private func appendNumber(_ button: CalcButton) {
        if isNewNumber {
            displayNumber = button.title
            isNewNumber = false
        } else {
            displayNumber += button.title
        }
    }
    
    private func converToOperation(_ button: CalcButton) -> Operation {
        switch button {
        case .add: return .add
        case .subtract: return .subtract
        case .multiply: return .multiply
        case .divide: return .divide
        case .remainder: return .remainder
        default : return .none
        }
    }
    
}
