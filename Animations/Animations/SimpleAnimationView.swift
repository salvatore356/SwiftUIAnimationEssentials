//
//  SimpleAnimationView.swift
//  Animations
//
//  Created by Salvatore on 20/9/23.
//

import SwiftUI

struct SimpleAnimationView: View {
    
    @State private var isScaled = false
        
    var body: some View {
        ZStack {
            
            Rectangle()
                .customButtonStyle(
                    backgroundColor: .blue,
                    textColor: .white
                )
                .scaleEffect(isScaled ? 1.5: 1)
                .onTapGesture {
                    withAnimation{
                        isScaled.toggle()
                    }
                }
        }
    }
}

#Preview {
    SimpleAnimationView()
}
