//
//  TrailerModel.swift
//  Cinema
//
//  Created by Mohamed Saad on 07/07/2024.
//

import Foundation

struct TrailerModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnil: String {
        return "thumb-\(id)"
    }
}
