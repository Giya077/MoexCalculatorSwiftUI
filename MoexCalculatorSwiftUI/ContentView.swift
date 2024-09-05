//
//  ContentView.swift
//  MoexCalculatorSwiftUI
//
//  Created by GiyaDev on 05.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color = Color.green
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Hello, Practicum")
                .padding()
                .foregroundColor(color)
            Button("Нажми Здесь") {
                if color == .green {
                    color = .orange
                } else {
                    color = .green
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
