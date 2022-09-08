//
//  PageModel.swift
//  Pinch
//
//  Created by 박재우 on 2022/09/08.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
