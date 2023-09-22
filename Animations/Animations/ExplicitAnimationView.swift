//
//  ExplicitAnimation.swift
//  Animations
//
//  Created by Salvatore on 20/9/23.
//

import SwiftUI

struct ExplicitAnimationView: View {
    @State private var rotationAngle: Double = 0.0

    var body: some View {
        ZStack {
            Rectangle()
                .customButtonStyle(backgroundColor: .blue, textColor: .white)
                .rotationEffect(.degrees(rotationAngle))
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.3)) {
                        rotationAngle += 45
                    }
                }
        }
    }
}

#Preview {
    ExplicitAnimationView()
}
