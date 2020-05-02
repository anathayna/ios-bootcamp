//
//  ResultViewController.swift
//  imc
//
//  Created by Ana Thayna Franca on 02/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imc: String?
    
    @IBOutlet var imcLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imcLabel.text = imc
    }

    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
