//
//  Day4App.swift
//  Day4
//
//  Created by 白数叡司 on 2023/09/23.
//

import SwiftUI
import RealityKit

@main
struct Day4App: App {
    
    @StateObject var model = Day4ViewModel()
    
    var body: some SwiftUI.Scene {
        ImmersiveSpace {
            RealityView { content in
                content.add(model.setupContentEntity())
                
                Task {
                    await model.runSession()
                }
            }
        }
    }
}
