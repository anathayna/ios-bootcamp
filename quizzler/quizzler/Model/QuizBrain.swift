//
//  QuizBrain.swift
//  quizzler
//
//  Created by Ana Thayna Franca on 25/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

struct QuizBrain {
    let quiz = [
        Question(q: "O sangue da lesma é verde", a: "True"),
        Question(q: "Aproximadamente um quarto dos ossos humanos estão nos pés", a: "True"),
        Question(q: "A área total da superfície de dois pulmões humanos é de aproximadamente 70 metros quadrados", a: "True"),
        Question(q: "Na Virgínia, Estados Unidos, se você acidentalmente bater em um animal com seu carro, poderá levá-lo para casa para comer", a: "True"),
        Question(q: "Thomas Edison foi o primeiro inventor da lâmpada incandescente", a: "False"),
        Question(q: "É ilegal fazer xixi no oceano em Portugal", a: "True"),
        Question(q: "Você pode levar uma vaca escada abaixo, mas não escada acima", a: "False"),
        Question(q: "O Google era originalmente chamado de 'Backrub'", a: "True"),
        Question(q: "Saara é o maior deserto do mundo", a: "False"),
        Question(q: "O som mais alto produzido por qualquer animal é de 188 decibels. Esse animal é o elefante africano", a: "False"),
        Question(q: "Nenhum pedaço de papel quadrado pode ser dobrado ao meio mais de 7 vezes", a: "False"),
        Question(q: "Daniel Rutherford descobriu um elemento que ficou conhecido como “ar venenoso”. Esse elemento é o Nitrogênio", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
