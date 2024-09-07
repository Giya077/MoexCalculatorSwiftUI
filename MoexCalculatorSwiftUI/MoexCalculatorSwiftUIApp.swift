//
//  MoexCalculatorSwiftUIApp.swift
//  MoexCalculatorSwiftUI
//
//  Created by GiyaDev on 05.09.2024.
//

import SwiftUI

@main
struct MoexCalculator: App {
    
    @StateObject var viewModel = CalculatorViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
