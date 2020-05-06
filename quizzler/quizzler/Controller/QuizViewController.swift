//
//  ViewController.swift
//  quizzler
//
//  Created by Ana Thayna Franca on 23/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotIt = quizBrain.checkAnswer(userAnswer)
        
        if userGotIt {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.questionNumber + 1 < quizBrain.quiz.count {
            quizBrain.questionNumber += 1
        } else {
            self.performSegue(withIdentifier: "goToScore", sender: self)
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScore" {
            let destinationVC = segue.destination as! ScoreViewController
            destinationVC.score = "Score: \(quizBrain.getScore())!!!"
        }
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }

}

