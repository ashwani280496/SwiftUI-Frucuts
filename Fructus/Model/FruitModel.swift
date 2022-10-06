//
//  FruitModel.swift
//  Fructus
//
//  Created by Ashwani Kumar on 06/10/22.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
