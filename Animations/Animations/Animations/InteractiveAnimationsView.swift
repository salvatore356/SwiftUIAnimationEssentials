//
//  InteractiveAnimationsView.swift
//  Animations
//
//  Created by Salvatore on 21/9/23.
//

import SwiftUI

struct InteractiveAnimationsView: View {
    // State properties
    @State private var currentColorIndex = 0
    @State private var isLongPressAnimation = false
    @State private var offset = CGSize.zero
    @State private var isScaled = false
    @State private var currentAnimation = ""
    
    // Colors for animation
    private let colors: [Color] = [.blue, .red, .green, .blue, .orange, .purple]

    var body: some View {
        ZStack {
            // Animated Rectangle
            animatedRectangle
                .gesture ( tapGesture )
                .gesture ( longPressGesture)
                .gesture ( dragGesture )
            
            // Display current animation type
            animationLabel
        }
    }
    
    // Animated Rectangle
    private var animatedRectangle: some View {
        Rectangle()
            .frame(width: 200, height: 200)
            .overlay(content: {
                VStack {
                    Text("Tap\nDrag\nPress")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            })
            .cornerRadius(isLongPressAnimation ? 100 : 10)
            .rotationEffect(isLongPressAnimation ? .degrees(360) : .zero)
            .foregroundColor(colors[currentColorIndex])
            .offset(offset)
            .scaleEffect(isScaled ? 1.5 : 1.0)
            
        
    }
    
    // Display current animation type
    private var animationLabel: some View {
        Text(currentAnimation)
            .font(.footnote)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .offset(y: -300)
    }
    
    // Tap Gesture
    private var tapGesture: some Gesture {
        TapGesture()
            .onEnded {
                currentAnimation = "tap animation"
                withAnimation(completionCriteria: .logicallyComplete, {
                    currentColorIndex = Int.random(in: 0..<colors.count)
                    isScaled.toggle()
                }, completion: {
                    currentAnimation = ""
                })
            }
    }
    
    // Long Press Gesture
    private var longPressGesture: some Gesture {
        LongPressGesture(minimumDuration: 1.0)
            .onEnded {_ in 
                currentAnimation = "long press animation"
                
                withAnimation(completionCriteria: .logicallyComplete, {
                    currentColorIndex = Int.random(in: 0..<colors.count)
                    isLongPressAnimation.toggle()
                    offset = .zero
                }, completion: {
                    currentAnimation = ""
                })
            }
    }
    
    // Drag Gesture
    private var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = value.translation
                currentAnimation = "drag animation"
            }
            .onEnded { _ in
                withAnimation(completionCriteria: .logicallyComplete, {
                    offset = .zero
                }, completion: {
                    currentAnimation = ""
                })
            }
    }
}


#Preview {
    InteractiveAnimationsView()
}
