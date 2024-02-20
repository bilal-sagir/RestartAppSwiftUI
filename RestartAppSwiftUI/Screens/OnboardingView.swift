//
//  OnboardingView.swift
//  RestartAppSwiftUI
//
//  Created by Bilal on 20.02.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
        } //: VSTACK
    }
}

#Preview {
    OnboardingView()
}
