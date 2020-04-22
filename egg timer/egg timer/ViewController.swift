//
//  ViewController.swift
//  egg timer
//
//  Created by Ana Thayna Franca on 15/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func timerButton(_ sender: UIButton) {
        
        let timer = sender.currentTitle!
        
        let result = eggTime[timer]
        
        print(result)
        
    }
    
}

