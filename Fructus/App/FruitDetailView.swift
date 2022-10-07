//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 06/10/22.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        VStack {
            NavigationView {
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(alignment: .center, spacing: 20) {
                       
                        VStack(alignment: .leading, spacing: 20) {
                            //Header
                            FruitHeaderView(fruit: fruit)
                                .frame(height: 440, alignment: .center)
                                .padding(.horizontal, -20)
                            
                            //Title
                            Text(fruit.title)
                                .foregroundColor(fruit.gradientColors[1])
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            //HeadLine
                            Text(fruit.headline)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            //Nutritient
                            
                            //Sub Headline
                            
                            Text("Learn more about \(fruit.title)".uppercased())
                                .foregroundColor(fruit.gradientColors[1])
                                .fontWeight(.bold)
                            
                            //Description
                            Text(fruit.description)
                                .multilineTextAlignment(.leading)
    
                            //Link
                            SourceLinkView()
                           
                        }//: VSTACK
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                    }
                }//: SCROLLVIEW
                .edgesIgnoringSafeArea(.top)
                .navigationBarHidden(true)
                           
            }//:NavigationView
        }//: VSTACK
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruits[1])
    }
}
