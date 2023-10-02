//
//  ImmersiveView.swift
//  Day10
//
//  Created by 白数叡司 on 2023/10/02.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    
    @State var model = Day10ViewModel()
    
    var body: some View {
        RealityView { content in
            content.add(model.setupContentEntity())
        }
        .onTapGesture {
            model.toggleSorted()
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
