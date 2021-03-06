//
//  ViewController.swift
//  calculator
//
//  Created by Ana Thayna Franca on 07/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var displayLabel: UILabel!
    private var calculator = CalculatorLogic()
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("cannot convert display label text to a double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt { return }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }

}
