//
//  ViewModel.swift
//  Day11
//
//  Created by 白数叡司 on 2023/10/04.
//

import SwiftUI
import Observation

@Observable
class ViewModel {
    var titleText: String = ""
    var isTitleFinished: Bool = false
    var finalTitle: String = "第11話 1文字ずつタイトルを表示"
}
