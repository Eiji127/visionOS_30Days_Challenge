//
//  ImmersiveView.swift
//  Day6
//
//  Created by 白数叡司 on 2023/09/27.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    @State var model = Day6ViewModel()
    @State var cube = Entity()
    
    var body: some View {
        RealityView { content in
            content.add(model.setupContentEntity())
            cube = model.addCube(name: "Cube1")
        }
        .gesture(
            DragGesture()
                .targetedToEntity(cube)
                .onChanged({ value in
                    cube.position = value.convert(value.location3D, from: .local, to: cube.parent!)
                })
        )
        .gesture(
            SpatialTapGesture()
                .targetedToEntity(cube)
                .onEnded({ value in
                    model.changeToRandomColor(entity: cube)
                })
        )
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
