//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Heading: UILabel!
    
    let eggCookTimes : [String : Int] = [
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
    
    var timeRemaining = 60
    
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness : String = sender.currentTitle!
        
        if hardness == "Soft" {
            timeRemaining = eggCookTimes[hardness]!
        } else if hardness == "Medium" {
            timeRemaining = eggCookTimes[hardness]!
        } else if hardness == "Hard" {
            timeRemaining = eggCookTimes[hardness]!
        } else {
            print("Puppies got your eggs")
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if timeRemaining > 0 {
            Heading.text = "\(timeRemaining)"
            print(timeRemaining)
            timeRemaining -= 1
        } else if timeRemaining == 0 {
            timer.invalidate()
            Heading.text = "DONE"
        }
    }
    
}
