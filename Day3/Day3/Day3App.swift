//
//  Day3App.swift
//  Day3
//
//  Created by 白数叡司 on 2023/09/22.
//

import SwiftUI

@main
struct Day3App: App {
    @State private var player = PlayerModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(player)
        }
    }
}
