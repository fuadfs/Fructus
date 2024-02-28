//
//  FructusApp.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
