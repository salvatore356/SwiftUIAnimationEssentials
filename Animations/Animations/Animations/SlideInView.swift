//
//  SlideInView.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct SlideInView: View {
    @State private var showDetails = false

    var body: some View {
        VStack {
            Text("What's the secret to a SwiftUI view's slick performance when it's time to make an entrance?")
                .customTitleStyleModifier()
            if showDetails {
                Text("It knows how to slide in and steal the show, one pixel at a time!")
                    .customAnswerStyleModifier()
                    .transition(.slide)
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
    SlideInView()
}
