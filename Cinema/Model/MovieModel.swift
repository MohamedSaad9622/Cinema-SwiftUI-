//
//  MovieModel.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import Foundation

struct MovieModel: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link : String
    let image: String
    let gallery: [String]
    let actor: [String]
}
