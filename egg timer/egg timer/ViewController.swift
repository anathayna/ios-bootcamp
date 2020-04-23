//
//  ViewController.swift
//  egg timer
//
//  Created by Ana Thayna Franca on 15/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    let eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]
    var totalTime = 0
    var secondsPass = 0
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func timerButton(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        
        progressBar.progress = 0.0
        secondsPass = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsPass < totalTime {
            secondsPass += 1
            progressBar.progress = Float(secondsPass) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
}

