//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Elina Mansurova on 2020-12-23.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import UIKit

struct CalculatorLogic {

    private var number: Double?
    private var intermediateCalc: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calcFunctions(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            }
            if symbol == "AC" {
                return 0
            }
            if symbol == "%" {
                return n / 100
            }
            if symbol == "=" {
                return performTwoNumberCalc(n2: n)
            } else {
                intermediateCalc = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalc(n2: Double) -> Double? {
        if let n1 = intermediateCalc?.n1, let operation = intermediateCalc?.calcMethod {
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("The operation doesn't match any of the cases")
            }
        }
        return nil
    }

}
