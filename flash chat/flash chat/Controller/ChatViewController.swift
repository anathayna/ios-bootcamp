//
//  ChatViewController.swift
//  flash chat
//
//  Created by Ana Thayna Franca on 22/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = Constants.appName
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPress(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
