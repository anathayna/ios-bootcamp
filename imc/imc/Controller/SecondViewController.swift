//
//  SecondViewController.swift
//  imc
//
//  Created by Ana Thayna Franca on 01/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit //Framework

class SecondViewController: UIViewController {
    
    var imc = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = imc
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
