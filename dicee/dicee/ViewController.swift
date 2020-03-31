//
//  ViewController.swift
//  dicee
//
//  Created by Ana Thayna Franca on 26/03/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceeImageOne: UIImageView!
    @IBOutlet var diceeImageTwo: UIImageView!

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceeArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //randomElement() = Int.random(in: 0...5)
        diceeImageOne.image = diceeArray.randomElement()
        diceeImageTwo.image = diceeArray[Int.random(in: 0...5)]

    }
    
}

