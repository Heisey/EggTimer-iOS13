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
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    let eggCookTimes : [String : Int] = [
        "Soft": 30,
        "Medium": 42,
        "Hard": 72
    ]
    
    var timeRemaining : Int = 60
    
    var timer = Timer()
    
    var hardness : String = "unknow"

    @IBAction func hardnessSelected(_ sender: UIButton) {
        Heading.text = "How do you like your eggs?"
        timer.invalidate()
        
        hardness = sender.currentTitle!
        
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
            timeRemaining -= 1
            let timePassed : Int = eggCookTimes[hardness]! - timeRemaining
            ProgressBar.progress = Float(timePassed) / Float(eggCookTimes[hardness]!)
        } else if timeRemaining == 0 {
            timer.invalidate()
            Heading.text = "DONE"
        }
    }
    
}
