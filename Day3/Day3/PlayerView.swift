//
//  PlayerView.swift
//  Day3
//
//  Created by 白数叡司 on 2023/09/23.
//

import AVKit
import SwiftUI

struct PlayerView: View, UIViewControllerRepresentable {
    
    @Environment(PlayerModel.self) private var model
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = model.makePlayerViewController()
        controller.allowsPictureInPicturePlayback = true
        return controller
    }
    
    func updateUIViewController(_ controller: AVPlayerViewController, context: Context) {
        Task { @MainActor in
            controller.contextualActions = []
        }
    }
}

#Preview {
    PlayerView()
}
