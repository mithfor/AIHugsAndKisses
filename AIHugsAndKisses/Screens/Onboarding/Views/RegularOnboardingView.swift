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
    @Binding var selection: Int
    
    var maxPageNumber: Int
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color("backgroundPrimaryColor").ignoresSafeArea()
            
            VStack(spacing: -12) {
                VStack {
                    Image(page.imageName)
                        .resizable()
                        .scaledToFit()
                        .padding(.top)
                }
                .frame(width: UIScreen.main.bounds.width)
                
                VStack {
                    OnboardingDescriptionView(
                        title: page.title,
                        description: page.description
                    )
                    .frame(width: UIScreen.main.bounds.width)
                    
                    OnboardingNextButton(
                        shouldShowOnboarding: $shouldShowOnboarding,
                        selection: $selection,
                        maxSelection: maxPageNumber
                    )
                    .padding(EdgeInsets(top: 16, leading: 8, bottom: 48, trailing: 8))
                }
            }
        }
    }
}

#Preview {
    RegularOnboardingView(
        page: OnboardingPage(
            id: 0,
            imageName: MockOnboardingPage.imageName,
            title: MockOnboardingPage.title,
            description: MockOnboardingPage.description),
        shouldShowOnboarding: .constant(true),
        selection: .constant(0),
        maxPageNumber: 1
    )
}
