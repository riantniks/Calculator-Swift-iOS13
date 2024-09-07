//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Rahul on 2024.09.02.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {

    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?

    //'-' means we are setting external parameter name to be nothing and the internal parameter name to be 'number'
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            switch symbol {
                case "+/-":
                    return n * -1
                case "%":
                    return n * 0.01
                case "AC":
                    return 0
                case "=":
                    return performTwoNumCalculation(n2: n)
                default:    //symbol is either "+", "-", "×" or "÷"
                    intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        
        return nil

    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            switch operation {
                case "+":
                    return n1 + n2
                case "-":
                    return n1 - n2
                case "×":
                    return n1 * n2
                case "÷":
                    return n1 / n2
                default:
                    fatalError("The operation passed in does not match any of the cases")
            }
        }
        
        return nil
        
    }
    
}
