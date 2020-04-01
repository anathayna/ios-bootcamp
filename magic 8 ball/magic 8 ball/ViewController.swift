//
//  ViewController.swift
//  magic 8 ball
//
//  Created by Ana Thayna Franca on 31/03/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    @IBAction func askButton(_ sender: UIButton) {
        let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
        
        imageView.image = ballArray.randomElement()
        //imageView.image = ballArray[Int.random(in: 0...4)]
    }
    
}

