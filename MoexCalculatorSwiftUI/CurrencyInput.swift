//
//  CurrencyInput.swift
//  MoexCalculatorSwiftUI
//
//  Created by GiyaDev on 05.09.2024.
//

import SwiftUI

struct CurrencyInput: View {
    
    var currency: Currency
    var amount: Double
    var calculator: (Double) -> Void
    
    var numberFormatter: NumberFormatter = { // 13
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.usesGroupingSeparator = false
        nf.maximumFractionDigits = 2
        return nf
    }()
    
    var body: some View {

        HStack { // 3
            
            VStack { // 4
                Text(currency.flag) // 5
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
                
                Text(currency.rawValue) // 6
                    .font(.title2)
            }
            .frame(height: 100)
            
            let topBinding = Binding<Double>(
                get: {
                    amount
                },
                set: {
                    calculator($0)
                }
            )
            
            TextField("", value: topBinding, formatter: numberFormatter) // 7
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
                .minimumScaleFactor(0.5)
                .keyboardType(.numberPad)
        }
    }
}

#Preview {
    CurrencyInput(
        currency: .RUR,
        amount: 1000,
        calculator:  { _ in}
    )
}
