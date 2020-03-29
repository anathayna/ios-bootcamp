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
    
    var leftDiceeNumber = 0
    var rightDiceeNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceeImageOne.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceeNumber]
        diceeImageTwo.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceeNumber]
        
        leftDiceeNumber = leftDiceeNumber + 1
        rightDiceeNumber = rightDiceeNumber - 1
    }
    
}

