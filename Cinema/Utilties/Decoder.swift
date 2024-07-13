//
//  Decoder.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

func decode<T: Codable>(file: String) -> T {
    // Locate the JSON file
    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
        fatalError("Failed to locate the JSON file.")
    }
    
    // Create property for the data
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Failed to load the data.")
    }
    
    // Create decoder
    let decoder = JSONDecoder()
    
    // Create property for the decoded data
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
        fatalError("Failed to decode the data.")
    }
    
    // Return the ready-to-use data
    return decodedData
}

