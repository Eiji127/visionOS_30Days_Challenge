//
//  Day11App.swift
//  Day11
//
//  Created by 白数叡司 on 2023/10/04.
//

import SwiftUI

@main
struct Day11App: App {
    
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
