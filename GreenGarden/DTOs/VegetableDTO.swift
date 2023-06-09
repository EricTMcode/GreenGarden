//
//  Vegetable.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import Foundation

struct VegetableDTO: Codable {
    let vegetableId: Int
    let name: String
    let description: String
    let thumbnailImage: String
    let seedDepth: String
    let growingSoilTemp: String
    let sowingDescription: String
    let growingDescription: String
    
    private enum CodingKeys: String, CodingKey {
        case vegetableId = "VegetableId"
        case name = "Name"
        case description = "Description"
        case thumbnailImage = "ThumbnailImage"
        case seedDepth = "SeedDepth"
        case growingSoilTemp = "GrowingSoilTemp"
        case sowingDescription = "SowingDescription"
        case growingDescription = "GrowingDescription"
        
    }
}
