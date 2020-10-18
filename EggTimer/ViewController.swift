//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softEggTime = 5
    let mediumEggTime = 7
    let hardEggTime = 12

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if hardness == "Soft" {
            print(softEggTime)
        } else if hardness == "Medium" {
            print(mediumEggTime)
        } else if hardness == "Hard" {
            print(hardEggTime)
        } else {
            print("Puppies")
        }
    }
    
}
