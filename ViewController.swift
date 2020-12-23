//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        //optional Double because we turned text into number
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label to a Double")
        }
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //title displayed on the button
        if let numberValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numberValue
                isFinishedTypingNumber = false
            } else {
                //because it is string it will add it next to the previous number
                displayLabel.text = displayLabel.text! + numberValue
            }
        }

    }

}

