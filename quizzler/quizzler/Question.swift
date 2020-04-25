//
//  Question.swift
//  quizzler
//
//  Created by Ana Thayna Franca on 25/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
