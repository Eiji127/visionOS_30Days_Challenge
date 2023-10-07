//
//  ViewModel.swift
//  Day13
//
//  Created by 白数叡司 on 2023/10/07.
//

import SwiftUI
import RealityKit
import Observation

@Observable
class ViewModel {
    // MARK: - Property
    private var contentEntity = Entity()
    
    // MARK: - Methods
    func setupContentEntity() -> Entity {
        contentEntity.components.set(InputTargetComponent(allowedInputTypes: .indirect))
        contentEntity.components.set(CollisionComponent(shapes: [ShapeResource.generateSphere(radius: 20)], isStatic: true))
        return contentEntity
    }
    
    func addAxis(value: EntityTargetValue<SpatialTapGesture.Value>) {
        // HACK: axis.usdzをRealityKitContentに追加してあげることで呼び出すことができそう
        let entity = try! Entity.load(named: "axis.usdz")
        entity.scale *= 3
        entity.position = value.convert(value.location3D, from: .local, to: contentEntity.parent!)
        
        contentEntity.addChild(entity)
    }
}
