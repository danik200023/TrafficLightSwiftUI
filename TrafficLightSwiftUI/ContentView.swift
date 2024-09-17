//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Данила Умнов on 07.09.2024.
//

import SwiftUI

struct ContentView: View {
    private enum CurrentLight {
        case off, red, yellow, green
    }
    
    @State private var buttonText = "START"
    
    @State private var currentLight = CurrentLight.off
    
    private func buttonAction() {
        switch currentLight {
        case .off:
            currentLight = .red
            buttonText = "NEXT"
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
    
    var body: some View {
        VStack {
            TrafficLightView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            ).padding(.bottom)
            TrafficLightView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3
            ).padding(.bottom)
            TrafficLightView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )
            Spacer()
            Button(action: buttonAction) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 150, height: 70)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.primary, lineWidth: 4))
                    Text(buttonText)
                        .foregroundStyle(.white)
                        .font(.system(size: 32))
                        
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
