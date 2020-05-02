//
//  CalculatorBrain.swift
//  imc
//
//  Created by Ana Thayna Franca on 02/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var imc: Float = 0.0
    
    mutating func calculateIMC(height: Float, weight: Float) {
        return imc = weight / pow(height, 2)
    }
    
    func getIMCValue() -> String {
        let imcTo1DecimalPlace = String(format: "%.1f", imc)
        return imcTo1DecimalPlace
    }
}
