//
//  CalculatorModel.swift
//  MoexCalculatorSwiftUI
//
//  Created by GiyaDev on 05.09.2024.
//

import Foundation

struct CalculatorModel {
    
    private(set) var currencyRates = CurrencyRates()
    
    mutating func setCurrencyRates(_ currencyRates: CurrencyRates) {
        self.currencyRates = currencyRates
    }
    
    func convert(_ source: CurrencyAmount, to target: Currency) -> Double {
        guard
            let sourceRate = currencyRates[source.currency],
            let targetRate = currencyRates[target]
        else { return 0 }
        
        if targetRate.isZero {
            return 0
        } else {
            return source.amount * sourceRate / targetRate
        }
    }
}
