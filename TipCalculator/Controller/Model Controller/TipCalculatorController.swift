//
//  TipCalculatorController.swift
//  TipCalculator
//
//  Created by Jason Mandozzi on 7/15/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import Foundation

class TipCalculatorController {
    
    static var shared = TipCalculatorController()
    
    func calculateTenPercentTip() {
        let tip = TipCalculator.bill * 0.10
        TipCalculator.billWithTip = tip + TipCalculator.bill
    }
    
    func calculateFifteenPercentTip() {
        
    }
    
    
}
