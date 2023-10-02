//
//  Day10App.swift
//  Day10
//
//  Created by 白数叡司 on 2023/10/02.
//

import SwiftUI

@main
struct Day10App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
