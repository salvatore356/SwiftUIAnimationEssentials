//
//  UsingWithAnimationCompletion.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct UsingWithAnimationCompletionView: View {
    @State private var firstAnimation = false
    @State private var secondAnimation = false

    var body: some View {
        VStack {
            Rectangle()
                .simpleCustomButtonStyle(title: "Tap me")
                .rotationEffect(firstAnimation ? .degrees(360) : .zero)
                .offset(
                    x: firstAnimation ? 100 : 0,
                    y: firstAnimation ? -100 : 0
                )
                .animation(.easeInOut(duration: 0.5), value: firstAnimation)
                .onTapGesture {
                    withAnimation {
                        firstAnimation.toggle()
                    } completion: {
                        // This code runs after the first animation completes
                        withAnimation {
                            secondAnimation.toggle()
                        }
                    }
                }

            Rectangle()
                .foregroundColor(.red)
                .simpleCustomButtonStyle(title: "")
                .rotationEffect(secondAnimation ? .degrees(-360) : .zero)
                .offset(
                    x: secondAnimation ? -100 : 0,
                    y: secondAnimation ? 100 : 0
                )
                .animation(.easeInOut(duration: 0.5), value: secondAnimation)
        }
    }
}

#Preview {
    UsingWithAnimationCompletionView()
}
