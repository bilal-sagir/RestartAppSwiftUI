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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                
                //MARK: - HEADER
                Spacer()
                VStack(spacing: 0) {
                    Text("Share.")
                        .fontWeight(.heavy)
                        .font(.system(size: 60))
                        .foregroundStyle(.white)
                    
                    Text("""
It's not how much we give but
how much love we put into giving.
""")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: HEADER
                
                //MARK: - CENTER
                ZStack {
                
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: CENTER
                Spacer()
                
                // MARK: - FOOTER
                ZStack {
                    //1. BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    //2. CALL-TO-ACTION (STATIC)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)
                    
                    //3. CAPSULE (DYNAMIC WIDTH)
                    
                    HStack {
                        Capsule() // ToMe: Useless?
                            .fill(Color("ColorBlue"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    //4. CIRCLE (DRAGGABLE)
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            
                            Circle()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        Spacer()
                    } //: HSTACK
                } //: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            } //: VSTACK
        } //: ZSTACK
    }
}

#Preview {
    OnboardingView()
}
