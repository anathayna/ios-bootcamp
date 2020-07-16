//
//  CalculatorLogic.swift
//  calculator
//
//  Created by Ana Thayna Franca on 16/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        }
        
        return nil
    }
}
