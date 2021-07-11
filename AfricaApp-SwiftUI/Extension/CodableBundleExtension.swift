//
//  CodableBundleExtension.swift
//  AfricaApp-SwiftUI
//
//  Created by Justyna Kowalkowska on 08/07/2021.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("DEBUG: Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("DEBUG: Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("DEBUG: Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
