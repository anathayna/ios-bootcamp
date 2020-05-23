//
//  ViewController.swift
//  xylophone
//
//  Created by Ana Thayna Franca on 28/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
                
    }
    
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//            guard let player = player else { return }
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }

}

