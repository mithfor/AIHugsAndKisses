//
//  RegularOnboardingView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//
import SwiftUI

struct RegularOnboardingView: View {
    
    let page: OnboardingPage
    
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.primary.ignoresSafeArea()
            
            VStack(alignment: .center) {
                
                GeometryReader { proxy in
                    Image(page.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: proxy.size.width, height: proxy.size.height * 3 / 2)
                }
                
                
                OnboardingDescriptionView(
                    title: page.title,
                    description: page.description
                )
                
                Button {
                    page.isDismissEnabled ? shouldShowOnboarding.toggle() : print("Next tapped")
                }
                label: {
                    Text(page.isDismissEnabled ? "Get Started" : "Next")
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .font(.title3)
                        .background(Color.button)
                        .font(.body)
                        .foregroundStyle(.white)
                        .cornerRadius(24)
                }
                .padding(EdgeInsets(top: 8, leading: 12, bottom: 28, trailing: 12))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    RegularOnboardingView(
        page: OnboardingPage(
            id: 0,
            imageName: MockOnboardingPage.imageName,
            title: MockOnboardingPage.title,
            description: MockOnboardingPage.description,
            isDismissEnabled: false),
            shouldShowOnboarding: .constant(true)
    )
}
