//
//  ViewController2.swift
//  view controller lifecycle
//
//  Created by Ana Thayna Franca on 30/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var label: UILabel!
     
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "hello"
        
        print("VC2 viewDidLoad Called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("VC2 viewWillAppear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("VC2 viewDidAppear Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VC2 viewWillDisappear Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("VC2 viewDidDisappear Called")
    }

}
