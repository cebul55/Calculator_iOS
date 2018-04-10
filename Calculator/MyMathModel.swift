//
//  MyMathModel.swift
//  Calculator
//
//  Created by Bartosz Cybulski on 29.03.2018.
//  Copyright © 2018 Bartosz Cybulski. All rights reserved.
//

import Foundation

class MyMathModel: NSObject {
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performEquation = false
    var operation = 0
    
    func divide () -> Double{
        return previousNumber / numberOnScreen
    }
    
    func multiply () -> Double{
        return previousNumber * numberOnScreen
    }
    
    func substract() -> Double{
        return previousNumber - numberOnScreen
    }
    
    func add() -> Double{
        return previousNumber + numberOnScreen
    }
}
