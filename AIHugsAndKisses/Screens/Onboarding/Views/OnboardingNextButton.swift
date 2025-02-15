//
//  OnboardingNextButton.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 15.02.2025.
//
import SwiftUI

struct OnboardingNextButton: View {
    
    @Binding var shouldShowOnboarding: Bool
    @Binding var selection: Int
        
    var maxSelection: Int
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                if isLastPage() {
                    shouldShowOnboarding.toggle()
                } else {
                    selectNextPage()
                }
            }
        }
        label: {
            Text(selection == maxSelection ? "Get Started" : "Next")
                .frame(maxWidth: ViewMetrics.maxWidth, maxHeight: ViewMetrics.height)
                .font(.title3)
                .background(Color.button)
                .font(.body)
                .foregroundStyle(.white)
                .cornerRadius(ViewMetrics.cornerRadius)
        }
    }
        
    
    private func isLastPage() -> Bool {
        selection == maxSelection
    }
    
    private func selectNextPage() {
        selection += 1
    }
    
    struct ViewMetrics {
        static let height: CGFloat = 48
        static var cornerRadius: CGFloat {
            self.height / 2
        }
        static var maxWidth: CGFloat {
            UIScreen.main.bounds.size.width
        }
    }
}

#Preview {
    OnboardingNextButton(shouldShowOnboarding: .constant(false), selection: .constant(0), maxSelection: 1)
}
