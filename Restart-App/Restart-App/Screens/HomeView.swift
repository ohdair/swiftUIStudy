//
//  HomeView.swift
//  Restart-App
//
//  Created by 박재우 on 2022/09/06.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 35 : -35)
                .animation(
                    Animation
                        .easeOut(duration: 4)
                        .repeatForever()
                    , value: isAnimating
                )
            }
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        
            // MARK: - FOOTER
            
            Spacer()
            
            
            
            Button(action: {
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnboardingViewActive = true
                }
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
        .onAppear(perform: {
            // Dispatch Queue = An object that manages the execution of tasks serially or concurrently on your app's main thread or on a background thread
            // asyncAfter = Executing Tasks Asynchronously
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

//MARK: - PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
