//
//  OnboardingView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.primary.ignoresSafeArea()
            
            TabView {
                RegularOnboardingView(image: "onboardingImage-1",
                                      title: "Popular Effects",
                                      description: "Start creating your masterpieces")
                RegularOnboardingView(image: "onboardingImage-2",
                                      title: "Try a new one",
                                      description: "Create creative videos right in the app")
                RegularOnboardingView(image: "onboardingImage-3",
                                      title: "Create moments",
                                      description: "The whole story will be at your fingertips at any moment")
                RegularOnboardingView(image: "onboardingImage-4",
                                      title: "Rate our App in the AppStore",
                                      description: "Lots of satisfied users")
                RegularOnboardingView(image: "onboardingImage-5",
                                      title: "Don't miss new trends",
                                      description: "Allow notifications")
            }
            .tabViewStyle(.page)
            
//            Spacer()
            
//            safeAreaInset(edge: .bottom) {
//                VStack {
//                    Button("Get Started") {
//                    }
//                }
//            }
//            .padding()
//            .font(.title3)
//            .background(Color.cyan)
//            .foregroundStyle(.white)
//            .cornerRadius(10)
//            .padding(.bottom)
        }
    }
}

#Preview {
    OnboardingView()
}


