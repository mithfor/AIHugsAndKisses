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
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(description)
                .foregroundStyle(.white)
                .font(.body)
            
            Button {}
            label: {
                Text("Next")
                    .frame(maxWidth: .infinity, maxHeight: 48)
                    .font(.title3)
                    .background(Color.button)
                    .font(.body)
                    .foregroundStyle(.white)
                    .cornerRadius(24)
            }
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 38, trailing: 12))
        }
    }
    
    
    struct ViewMetrics {
        let height: CGFloat = 148
    }
}

#Preview {
    OnboardingDescriptionView(title: "TITLEtitle",
                          description: "Description")
}
