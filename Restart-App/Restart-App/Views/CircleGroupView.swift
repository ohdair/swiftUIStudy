//
//  CircleGroupView.swift
//  Restart-App
//
//  Created by 박재우 on 2022/09/07.
//

import SwiftUI

struct CircleGroupView: View {
    
    // @State = A property wrapper type that can read and write a value managed by SwitUI
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 270, height: 270, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity ), lineWidth: 80)
                .frame(width: 280, height: 280, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
