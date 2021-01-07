//
//  ProfileViewController.swift
//  wassup
//
//  Created by ana thayna on 06/01/21.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit
import GoogleSignIn

class ProfileViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    let data = ["logout"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "profilecell")
        tableView?.delegate = self
        tableView?.dataSource = self
    }

}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profilecell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let actionSheet = UIAlertController(title: "",
                                            message: "",
                                            preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "logout",
                                            style: .destructive,
                                            handler: { [weak self] _ in
                                                
                                                guard let strongSelf = self else { return }
                                                
                                                // MARK: - facebook logout
                                                FBSDKLoginKit.LoginManager().logOut()
                                                
                                                // MARK: - google logout
                                                GIDSignIn.sharedInstance()?.signOut()
                                                
                                                do {
                                                    try FirebaseAuth.Auth.auth().signOut()
                                                    let vc = LoginViewController()
                                                    let nav = UINavigationController(rootViewController: vc)
                                                    nav.modalPresentationStyle = .fullScreen
                                                    strongSelf.present(nav, animated: true)
                                                } catch {
                                                    print("failed to logout")
                                                }
        }))
        
        actionSheet.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        
        present(actionSheet, animated: true)
        
    }
    
}
