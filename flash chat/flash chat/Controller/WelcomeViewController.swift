//
//  WelcomeViewController.swift
//  flash chat
//
//  Created by Ana Thayna Franca on 22/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let fruitBasket = ["Apple", "Pear", "Orange"]
//        for fruit in fruitBasket {
//            print(fruit)
//        }
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "⚡️FlashChat"
        
        for letter in titleText {
            //print("-")
            //print(letter)
            //print(charIndex)
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
}
