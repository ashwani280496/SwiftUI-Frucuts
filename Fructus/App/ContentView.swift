//
//  ContentView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings, onDismiss: nil) {
                    SettingsView()
                }
            }
        }//: NAVIGATION
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
