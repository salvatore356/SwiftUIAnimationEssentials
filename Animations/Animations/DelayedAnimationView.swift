//
//  DelayedAnimationView.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct DelayedAnimationView: View {
    @State private var isAnimating = false

    var body: some View {
        ZStack{
            VStack (alignment: .leading, spacing: 10){
                HStack{ Spacer() }
                
                ForEach(0..<11) { number in
                    Rectangle()
                        .simpleCustomButtonStyle(title: "\((Float(number) / 10.0))s")
                        .animation(
                            Animation.easeInOut(duration: 1.0).delay(Double(number) / 10.0) // Adding a 1-second delay
                        )
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
    DelayedAnimationView()
}
