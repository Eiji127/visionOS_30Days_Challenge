//
//  Day5App.swift
//  Day5
//
//  Created by 白数叡司 on 2023/09/24.
//

import SwiftUI

@main
struct Day5App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
