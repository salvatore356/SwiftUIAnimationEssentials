//
//  TransitionAnimation.swift
//  Animations
//
//  Created by Salvatore on 21/9/23.
//

import SwiftUI

struct TransitionAnimationView: View {
    @State private var showRedView = false

    var body: some View {
        
        ZStack {
            if showRedView {
                RedView()
                    .transition(.move(edge: .leading))
            } else {
                BlueView()
                    .transition(.move(edge: .trailing))
            }

            Text("Tap Me")
                .foregroundColor(.white)
        }
        
        .onTapGesture {
            withAnimation {
                showRedView.toggle()
            }
        }
    }
}

struct RedView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height
            )
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.red)
    }
        
}

struct BlueView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height
            )
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.blue)
    }
}

#Preview {
    TransitionAnimationView()
}
