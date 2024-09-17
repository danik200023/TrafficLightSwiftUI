//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Данила Умнов on 13.09.2024.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .overlay(Circle().stroke(Color.primary, lineWidth: 4))
            .frame(width: 150)
            .foregroundStyle(color.opacity(opacity))
    }
}

#Preview {
    TrafficLightView(color: .green, opacity: 1.0)
}
