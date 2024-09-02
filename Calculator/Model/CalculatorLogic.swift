//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Rahul on 2024.09.02.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {

    var number: Double
    
    init(number: Double) {
        self.number = number        //number = number or number = n when init(n: Double)
    }
    
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "%" {
            return number * 0.01
        } else if symbol == "AC" {
            return 0
        }
        
        return nil
    

    }
}
