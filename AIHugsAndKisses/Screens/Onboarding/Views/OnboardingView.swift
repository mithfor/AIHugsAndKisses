//
//  OnboardingView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var shouldShowOnboarding: Bool
    @State private var selection = 0
    
    let pages: [OnboardingPage] = [
        OnboardingPage(
            id: 0,
            imageName: "onboardingImage-1",
            title: "Popular Effects",
            description: "Start creating your masterpieces",
            isDismissEnabled: false),
        
        OnboardingPage(
            id: 1,
            imageName: "onboardingImage-2",
            title: "Try a new one",
            description: "Create creative videos right in the app",
            isDismissEnabled: false),
        
        OnboardingPage(
            id: 2,
            imageName: "onboardingImage-3",
            title: "Create moments",
            description: "The whole story will be at your fingertips at any moment",
            isDismissEnabled: false),
        
        OnboardingPage(
            id: 3,
            imageName: "onboardingImage-4",
            title: "Rate our App in the AppStore",
            description: "Lots of satisfied users",
            isDismissEnabled: false),
        
        OnboardingPage(
            id: 4,
            imageName: "onboardingImage-5",
            title: "Don't miss new trends",
            description: "Allow notificationss",
            isDismissEnabled: true),
    ]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.primary.ignoresSafeArea()
            
            TabView(selection: $selection) {
                ForEach(pages.indices, id: \.self) { index in
                    RegularOnboardingView(
                        page: pages[index],
                        shouldShowOnboarding: $shouldShowOnboarding)
                }
            }
            .tabViewStyle(.page)

        }
    }
}

#Preview {
    OnboardingView(shouldShowOnboarding: .constant(true))
}


