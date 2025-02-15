//
//  OnboardingDescription.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//

import SwiftUI

struct OnboardingDescriptionView: View {
    
    let title: String
    let description: String
    
    var isDismissEnabled: Bool
    @Binding var shouldShowOnboarding: Bool
    
    private let viewMetrics: ViewMetrics = ViewMetrics()
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .font(.body)
            
            Button {
                isDismissEnabled ? shouldShowOnboarding.toggle() : print("Next tapped")
            }
            label: {
                Text(isDismissEnabled ? "Get Started" : "Next")
                    .frame(maxWidth: .infinity, maxHeight: 48)
                    .font(.title3)
                    .background(Color.button)
                    .font(.body)
                    .foregroundStyle(.white)
                    .cornerRadius(24)
            }
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 28, trailing: 12))
        }
    }
    
    
    struct ViewMetrics {
        let height: CGFloat = 148
    }
}

#Preview {
    OnboardingDescriptionView(title: "TITLE",
                          description: "Description",
                              isDismissEnabled: true, shouldShowOnboarding: .constant(true)
    )
}
