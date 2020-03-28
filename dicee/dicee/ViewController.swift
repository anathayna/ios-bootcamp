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
        diceeImageOne.alpha = 0.5
        diceeImageTwo.image = #imageLiteral(resourceName: "DiceThree")
    }


}

