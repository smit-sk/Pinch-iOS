//
//  PageModel.swift
//  Pinch
//
//  Created by SMIT KHOKHARIYA on 2024-02-17.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
    
}

extension Page {
    var thumbnailName: String{
        return "thumb-" + imageName
    }
}
