//
//  CustomTransitionView.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct CustomTransitionView: View {
    @State private var showDetails = false

    var body: some View {
        VStack {
            
            Text("What's the secret to a SwiftUI view's cinematic performance when it's time to make a grand entrance or exit?")
                .customTitleStyleModifier()
            if showDetails {
                Text("It combines the art of the hide and the elegance of the slide, creating a showstopper every time!")
                    .customAnswerStyleModifier()
                    .transition(AnyTransition.scale(scale: 0.5).combined(with: .slide))
            }

            Button("See answer") {
                withAnimation {
                    showDetails.toggle()
                }
            }
        }
    }
}


#Preview {
    CustomTransitionView()
}
