//
//  Question.swift
//  quizzz
//
//  Created by Ana Thayna Franca on 26/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
