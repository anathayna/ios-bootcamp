//
//  CalculatorBrain.swift
//  imc
//
//  Created by Ana Thayna Franca on 02/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var imc: IMC?
    
    mutating func calculateIMC(height: Float, weight: Float) {
        let imcValue = weight / pow(height, 2)
        
        if imcValue < 18.5 {
            //print("underweight")
            imc = IMC(value: imcValue, advice: "EAT MORE PIES!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        } else if imcValue < 24.9 {
            //print("normal weight")
            imc = IMC(value: imcValue, advice: "FIR AS A FIDDLE!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            //print("overweight")
            imc = IMC(value: imcValue, advice: "EAT LESS PIES!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getIMCValue() -> String {
        let imcTo1DecimalPlace = String(format: "%.1f", imc?.value ?? 0.0)
        return imcTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? .white
    }
}
