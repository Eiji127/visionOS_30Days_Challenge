//
//  Day13App.swift
//  Day13
//
//  Created by 白数叡司 on 2023/10/07.
//

import SwiftUI

@main
struct Day13App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
