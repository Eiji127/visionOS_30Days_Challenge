//
//  ContentView.swift
//  Day2
//
//  Created by 白数叡司 on 2023/09/18.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    private let url = URL(string: "https://developer.apple.com/augmented-reality/quick-look/models/drummertoy/toy_drummer_idle.usdz")!
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("↓ Toy Drummer Idle")
            }
            
            Model3D(url: url) { model in
                model.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            } placeholder: {
                ProgressView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
