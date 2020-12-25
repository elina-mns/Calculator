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
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calcFunctions(symbol: String) -> Double? {
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
        }
        return nil
    }

}
