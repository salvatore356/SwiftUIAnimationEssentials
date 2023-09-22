//
//  EasingFunctionsView.swift
//  Animations
//
//  Created by Salvatore on 21/9/23.
//

import SwiftUI

struct EasingFunctionsView: View {
    
    @State private var isAnimating = false
    static let duration = 1.0
    
    let animations: [String: Animation] = [
        "easeInOut": Animation.easeInOut(duration: duration),
        "linear": Animation.linear(duration: duration),
        "easeOut": Animation.easeOut(duration: duration),
        "easeIn": Animation.easeIn(duration: duration),
        "bouncy": Animation.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25),
        "interactiveSpring": Animation.interactiveSpring(duration: duration),
        "interpolatingSpring": Animation.interpolatingSpring(duration: duration),
        "smooth": Animation.smooth(duration: duration),
        "snappy": Animation.snappy(duration: duration),
        "default": Animation.default,
        "spring": Animation.spring(duration: duration),
        "timingCurve": Animation.timingCurve(0.68, -0.55, 0.27, 1.55)
    ]
    
    var body: some View {
        ZStack{
            VStack (alignment: .leading, spacing: 10){
                HStack{ Spacer() }
                ForEach(Array(animations.keys.sorted()), id: \.self) { animationName in

                    Rectangle()
                        .simpleCustomButtonStyle(title: animationName)
                        .animation(animations[animationName]!)
                        .offset(
                            x: isAnimating ? UIScreen.main.bounds.width - 145: 20
                        )
                }
                HStack{
                    Spacer()
                    Text("Tap Me")
                    Spacer()
                }
            }
            
        }
        .background(.white)
        .onTapGesture {
            withAnimation{
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    EasingFunctionsView()
}
