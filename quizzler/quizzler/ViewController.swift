//
//  ViewController.swift
//  quizzler
//
//  Created by Ana Thayna Franca on 23/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var questionNumber = 0
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle //true or false
        //let actualQuestion = quiz[questionNumber]
        //let actualAnswer = actualQuestion.answer
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }

}

