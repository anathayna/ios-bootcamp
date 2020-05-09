//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var conditionImageView: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var searchTXTField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTXTField.delegate = self
    }

    @IBAction func searchPress(_ sender: UIButton) {
        searchTXTField.endEditing(true)
        print(searchTXTField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTXTField.endEditing(true)
        print(searchTXTField.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchTXTField.text != "" {
            return true
        } else {
            searchTXTField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTXTField.text = ""
    }
}
