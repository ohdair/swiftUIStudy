//
//  ContentView.swift
//  Restart-App
//
//  Created by 박재우 on 2022/09/06.
//

import SwiftUI

struct ContentView: View {
    // property wrapper
    // user defaults key = onboarding
    // property name = isOnboardingViewActive
    // value set = true
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
