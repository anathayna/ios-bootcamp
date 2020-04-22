//
//  ViewController.swift
//  egg timer
//
//  Created by Ana Thayna Franca on 15/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 2
    let mediumTime = 5
    let hardTime = 12
    
    @IBAction func timerButton(_ sender: UIButton) {
        
        let timer = sender.currentTitle
        
        switch timer {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("Error")
        }
        
//        if timer == "Soft" {
//            print(softTime)
//        } else if timer == "Medium" {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
    }
    
}

