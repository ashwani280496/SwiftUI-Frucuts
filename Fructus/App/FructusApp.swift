//
//  FructusApp.swift
//  Fructus
//
//  Created by Ashwani Kumar on 06/10/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnbaording: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnbaording {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
