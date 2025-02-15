//
//  OnboardingVideoView.swift
//  AIHugsAndKisses
//
//  Created by Dmitrii Voronin on 16.02.2025.
//

import SwiftUI
import AVKit

struct OnboardingVideoView: View {
    
    var videoURL: URL? {
        Bundle.main.url(forResource: "ski", withExtension: "mp4")
    }
    
    var body: some View {
        if let videoURL {
            VideoPlayer(
                player: AVPlayer(url: videoURL))
            
        } else {
            Text("Failed to get video URL!")
        }
    }
}

#Preview {
    OnboardingVideoView()
}
