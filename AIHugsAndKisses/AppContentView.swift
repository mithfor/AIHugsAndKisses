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
            
            Color("primaryColor").ignoresSafeArea()
            
            VStack {
                Text("Launch")
                    .foregroundStyle(.white)
            }
            .offset(y: 0)
            .fullScreenCover(isPresented: $shouldShowOnboarding) {
                MainView()
            } content: {
                OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            }

        }
        .ignoresSafeArea()
    }
}

#Preview {
    AppContentView()
}
