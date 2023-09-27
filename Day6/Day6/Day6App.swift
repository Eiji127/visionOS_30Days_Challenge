//
//  Day6App.swift
//  Day6
//
//  Created by 白数叡司 on 2023/09/27.
//

import SwiftUI

@main
struct Day6App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
