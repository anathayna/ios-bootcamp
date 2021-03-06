//
//  ScoreViewController.swift
//  quizzler
//
//  Created by Ana Thayna Franca on 05/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    var score: String?
    
    @IBOutlet var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = score
    }
    
    @IBAction func playAgainPress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
    
}
