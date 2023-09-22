//
//  ImplicitAnimation.swift
//  Animations
//
//  Created by Salvatore on 20/9/23.
//

import SwiftUI

struct ImplicitAnimationView: View {
    @State private var isToggled = false

    var body: some View {
        ZStack {
            
            Rectangle()
                .customButtonStyle(backgroundColor: isToggled ? .green : .blue, textColor: .white)
                .animation(.default, value: isToggled)
                .onTapGesture {
                    isToggled.toggle()
                }
        }
    }
}

#Preview {
    ImplicitAnimationView()
}
