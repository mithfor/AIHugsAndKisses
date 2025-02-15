//
//  OnboardingPage.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 15.02.2025.
//

import Foundation

struct OnboardingPage: Identifiable, Hashable {
    var id: Int
    var imageName: String
    var title: String
    var description: String
    var isDismissEnabled: Bool
}
