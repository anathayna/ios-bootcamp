//
//  Constants.swift
//  flash chat
//
//  Created by Ana Thayna Franca on 27/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

struct Constants {
    static let appName = "⚡️FlashChat"
    static let registerSegue = "registerChat"
    static let loginSegue = "loginChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
