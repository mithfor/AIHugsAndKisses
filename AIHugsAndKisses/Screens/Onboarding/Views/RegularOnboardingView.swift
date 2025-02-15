//
//  RegularOnboardingView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 14.02.2025.
//
import SwiftUI

struct RegularOnboardingView: View {
    
    let image: String
    let title: String
    let description: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.primary.ignoresSafeArea()
            
            VStack(alignment: .center) {
                
                GeometryReader { proxy in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width, height: proxy.size.height * 3 / 2)

                }
                
                
                OnboardingDescriptionView(title: title, description: description)
                

            }
            .padding()
            .frame(maxWidth: .infinity)
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    RegularOnboardingView(image: MockOnboardingModel.image,
                          title: MockOnboardingModel.title,
                          description: MockOnboardingModel.description)
}
