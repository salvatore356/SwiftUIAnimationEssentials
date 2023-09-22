//
//  Style.swift
//  Animations
//
//  Created by Salvatore on 21/9/23.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ViewModifier {
    var backgroundColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 200)
            .foregroundColor(backgroundColor)
            .cornerRadius(20)
            .overlay(
                Text("Tap Me")
                    .foregroundColor(textColor)
                    .font(.headline)
            )
    }
}

struct SimpleCustomButtonStyle: ViewModifier {
    var backgroundColor: Color
    var textColor: Color
    var title: String
    
    func body(content: Content) -> some View {
        content
            .frame(width: 125, height: 50)
            .foregroundColor(backgroundColor)
            .cornerRadius(10)
            .overlay(
                Text(title)
                    .foregroundColor(textColor)
                    .font(.caption)
            )
    }
}

struct TitleStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.title3)
            .multilineTextAlignment(.center)
    }
}

struct AnswerStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .padding()
    }
}

    

extension View {
    func customButtonStyle(backgroundColor: Color, textColor: Color) -> some View {
        self.modifier(CustomButtonStyle(backgroundColor: backgroundColor, textColor: textColor))
    }
    
    func simpleCustomButtonStyle(title:String) -> some View {
        self.modifier(SimpleCustomButtonStyle(backgroundColor: .blue, textColor: .white, title: title))
    }
    
    func customTitleStyleModifier() -> some View {
        self.modifier(TitleStyleModifier())
    }
    
    func customAnswerStyleModifier() -> some View {
        self.modifier(AnswerStyleModifier())
    }
}


