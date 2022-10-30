//
//  NutritientsView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 07/10/22.
//

import SwiftUI

struct NutritientsView: View {
    var title:[String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamin",""]
    var fruit: Fruit
    var body: some View {
        
        GroupBox {
            HStack {
                DisclosureGroup("Nutritional value per 100g") {
                    ForEach(0..<fruit.nutrition.count) { item in
                        Divider().padding(.vertical, 2)
                        HStack {
                            HStack {
                                Image(systemName: "info.circle")
                                Text(title[item])
                            }
                            .foregroundColor(fruit.gradientColors[1])
                            Spacer()
                            Text(fruit.nutrition[item])
                        }
                    }
                }
            }
        }
    }
}

struct NutritientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutritientsView(fruit: fruits[1])
    }
}
