//
//  ChatAppUser.swift
//  wassup
//
//  Created by ana thayna on 26/01/21.
//

import Foundation

struct ChatAppUser {
    let name: String
    let email: String
    
    var safeEmail: String {
        var safeEmail = email.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
        return safeEmail
    }
    
    var profilePicFileName: String {
        return "\(safeEmail)_profile_pic.png"
    }
}
