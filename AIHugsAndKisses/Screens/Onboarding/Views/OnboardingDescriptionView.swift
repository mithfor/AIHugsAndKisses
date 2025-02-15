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
        }
    }
    
    struct ViewMetrics {
        let height: CGFloat = 148
    }
}

#Preview {
    OnboardingDescriptionView(
        title: "TITLE",
        description: "Description"
    )
}
