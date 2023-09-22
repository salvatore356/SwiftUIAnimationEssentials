//
//  PulsatingCircleAnimationView.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct PulsatingCircleAnimationView: View {
    @State private var isPulsating = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .scaleEffect(isPulsating ? 1.2 : 1.0)
                .opacity(isPulsating ? 0.7 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                
        }
        .onAppear() {
            isPulsating.toggle()
        }
    }
}

#Preview {
    PulsatingCircleAnimationView()
}
