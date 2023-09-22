//
//  CrossfadeView.swift
//  Animations
//
//  Created by Salvatore on 22/9/23.
//

import SwiftUI

struct CrossfadeView: View {
    @State private var showDetails = false

    var body: some View {
        ZStack {
            VStack{
                VStack {
                    Text("How does a SwiftUI view go from invisible to making a grand entrance on the screen?")
                        .customTitleStyleModifier()
                    if showDetails {
                        Text("It decides to unwrap with the effect!")
                            .customAnswerStyleModifier()
                            .transition(.opacity)
                    }
                }
                
                Button("See answer") {
                    withAnimation {
                        showDetails.toggle()
                    }
                }
            }
        }
    }
}


#Preview {
    CrossfadeView()
}
