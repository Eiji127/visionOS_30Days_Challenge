//
//  Day8App.swift
//  Day8
//
//  Created by 白数叡司 on 2023/10/01.
//

import SwiftUI

@main
struct Day8App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
