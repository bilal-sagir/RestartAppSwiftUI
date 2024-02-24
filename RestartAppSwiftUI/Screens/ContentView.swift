//
//  ContentView.swift
//  RestartAppSwiftUI
//
//  Created by Bilal on 20.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeIn(duration: 0.5), value: isOnboardingViewActive)
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
