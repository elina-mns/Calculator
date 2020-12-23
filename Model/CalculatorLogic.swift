//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Elina Mansurova on 2020-12-23.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import UIKit

struct CalculatorLogic {

    var number: Double
    init(number: Double) {
        self.number = number
    }
    
    func calcFunctions(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        }
        if symbol == "AC" {
            return 0
        }
        if symbol == "%" {
            return number / 100
        }
        return nil
    }

}
