//
//  MenuList.swift
//  Animations
//
//  Created by Salvatore on 20/9/23.
//

import SwiftUI

struct MenuList: View {
    var body: some View {
        List {
            NavigationLink(destination: SimpleAnimationView()) {
                Text("Simple Animation")
            }
            

            NavigationLink(destination: ExplicitAnimationView()) {
                Text("Explicit Animation")
            }
            
            NavigationLink(destination: ImplicitAnimationView()) {
                Text("Implicit Animation")
            }

            NavigationLink(destination: TransitionAnimationView()) {
                Text("Transition Animation")
                    
            }
            
            NavigationLink(destination: EasingFunctionsView()) {
                Text("Ease Functions")
                    
            }
            
            NavigationLink(destination: InteractiveAnimationsView()) {
                Text("Gestures")
            }
            NavigationLink(destination: CrossfadeView()) {
                Text("Cross Fade Transition")
            }
            
            NavigationLink(destination: SlideInView()) {
                Text("Slide In Transition")
            }
            NavigationLink(destination: CustomTransitionView()) {
                Text("Custom Transition")
            }
            NavigationLink(destination: DelayedAnimationView()) {
                Text("Delays")
            }
            NavigationLink(destination: UsingWithAnimationCompletionView()) {
                Text("withAnimation Completion")
            }
            NavigationLink(destination: PulsatingCircleAnimationView()) {
                Text("Sequence Animation")
            }
            
            
            
            
        }
    }
}

#Preview {
    MenuList()
}
