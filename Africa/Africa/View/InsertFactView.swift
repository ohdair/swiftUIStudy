//
//  InsertFactView.swift
//  Africa
//
//  Created by 박재우 on 2022/09/11.
//

import SwiftUI

struct InsertFactView: View {
    // MARK: - PROPERTIES

    let animal: Animal
    
    // MARK: - BODY

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

// MARK: - PREVIEW

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertFactView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
