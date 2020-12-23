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
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label to a Double")
            }
            return number
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(displayValue * -1)
            }
            if calcMethod == "AC" {
                displayLabel.text = String(0)
            }
            if calcMethod == "%" {
                displayLabel.text = String(displayValue / 100)
            }
        }
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //title displayed on the button
        if let numberValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numberValue
                isFinishedTypingNumber = false
            } else {
                if numberValue == "." {
                    //round down current display value
                    let isInt = floor(displayValue) == displayValue
                    if !isInt { return }
                }
                //because it is string it will add it next to the previous number
                displayLabel.text = displayLabel.text! + numberValue
            }
        }

    }

}

