//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 06/10/22.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnbaording: Bool?

    var body: some View {
        Button {
            isOnbaording = false
        } label: {
            HStack(spacing: 10) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.5)
            )
        }//: Button
        .tint(.white)
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
