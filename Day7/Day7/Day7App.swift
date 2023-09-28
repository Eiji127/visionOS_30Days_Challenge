//
//  Day7App.swift
//  Day7
//
//  Created by 白数叡司 on 2023/09/28.
//

import SwiftUI

@main
struct Day7App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
