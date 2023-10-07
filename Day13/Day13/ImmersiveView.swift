//
//  ImmersiveView.swift
//  Day13
//
//  Created by 白数叡司 on 2023/10/07.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    
    @State var model = ViewModel()
    
    var body: some View {
        RealityView { content in
            content.add(model.setupContentEntity())
        }
        .gesture(
            SpatialTapGesture(count: 2)
                .targetedToAnyEntity()
                .onEnded { value in
                    model.addAxis(value: value)
                }
        )
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
