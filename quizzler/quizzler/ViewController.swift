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
        Question(q: "Four + Two is equal to Six", a: "True"),
        Question(q: "Five - Three is greater than One", a: "True"),
        Question(q: "Three - Eight is less than Ten", a: "False")
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
            print("Right!!")
        } else {
            print("Wrong!!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }

}

