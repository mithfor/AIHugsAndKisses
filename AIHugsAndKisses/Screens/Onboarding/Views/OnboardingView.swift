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
    
    private let pages: [OnboardingPage] = [
        OnboardingPage(
            id: 0,
            imageName: "onboardingImage-1",
            title: "Popular Effects",
            description: "Start creating your masterpieces"
        ),
        
        OnboardingPage(
            id: 1,
            imageName: "onboardingImage-2",
            title: "Try a new one",
            description: "Create creative videos right in the app"
        ),
        
        OnboardingPage(
            id: 2,
            imageName: "onboardingImage-3",
            title: "Create moments",
            description: "The whole story will be at your fingertips at any moment"
        ),
        
        OnboardingPage(
            id: 3,
            imageName: "onboardingImage-4",
            title: "Rate our App in the AppStore",
            description: "Lots of satisfied users"
        ),
        
        OnboardingPage(
            id: 4,
            imageName: "onboardingImage-5",
            title: "Don't miss new trends",
            description: "Allow notificationss"
        )
    ]
    
    private var maxPageNumber: Int {
        pages.count - 1
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color("backgroundPrimaryColor")
                .ignoresSafeArea()
            
            VStack {
                
                TabView(selection: $selection) {
                    ForEach(pages.indices, id: \.self) { index in
                        RegularOnboardingView(
                            page: pages[index],
                            shouldShowOnboarding: $shouldShowOnboarding,
                            selection: $selection,
                            maxPageNumber: maxPageNumber
                        )
                    }
                }
                .tabViewStyle(.page)
                .offset(y: -34)
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
        }
    }
}

#Preview {
    OnboardingView(shouldShowOnboarding: .constant(true))
}




