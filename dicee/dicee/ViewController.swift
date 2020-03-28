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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceeImageOne.image = #imageLiteral(resourceName: "DiceTwo")
        diceeImageTwo.image = #imageLiteral(resourceName: "DiceThree")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceeImageOne.image = #imageLiteral(resourceName: "DiceFour")
        diceeImageTwo.image = #imageLiteral(resourceName: "DiceFive")
    }
    
}

