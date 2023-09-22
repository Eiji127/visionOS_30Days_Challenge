//
//  Video.swift
//  Day3
//
//  Created by 白数叡司 on 2023/09/22.
//

import Foundation

struct Video: Identifiable, Hashable, Codable {
    let id: Int
    let url: URL
    let title: String
}
