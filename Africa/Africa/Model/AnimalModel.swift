//
//  AnimalModel.swift
//  Africa
//
//  Created by 박재우 on 2022/09/11.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
