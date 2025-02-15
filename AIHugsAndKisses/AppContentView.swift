//
//  ContentView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//

import SwiftUI

struct AppContentView: View {
    var body: some View {
        
        @AppStorage("shouldShowOnboarding") var shouldShowOnboarding = true
        
        ZStack {
            Color("backgroundPrimaryColor").ignoresSafeArea()
            
            if (shouldShowOnboarding) {
                OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            } else {
                MainView()
            }

        }
        .ignoresSafeArea()
    }
}

#Preview {
    AppContentView()
}
