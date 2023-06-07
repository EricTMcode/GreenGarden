//
//  Vegetable.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import Foundation

struct Vegetable: Codable {
    let vegetableId: Int
    let name: String
    let description: String
    let thumbnailImage: String
    
    private enum CodingKeys: String, CodingKey {
        case vegetableId = "VegetableId"
        case name = "Name"
        case description = "Description"
        case thumbnailImage = "ThumbnailImage"
    }
}
