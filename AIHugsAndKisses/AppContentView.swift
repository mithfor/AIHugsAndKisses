//
//  ContentView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//

import SwiftUI

struct AppContentView: View {
    var body: some View {
        
        @AppStorage("isOnboardingShowing") var isOnboardingShowing = true
        
        
        ZStack {
            
            Color("primaryColor").ignoresSafeArea()
            
            VStack {
                Text("Launch")
                    .foregroundStyle(.white)
            }
            .offset(y: 0)
            .fullScreenCover(isPresented: $isOnboardingShowing) {
                isOnboardingShowing = false
                MainView()
            } content: {
                OnboardingView()
            }

        }
        .ignoresSafeArea()
    }
}

#Preview {
    AppContentView()
}
