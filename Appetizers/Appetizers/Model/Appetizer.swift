//
//  Appetizer.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 17.01.23.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct Appetizers: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is my description and thats all.",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
