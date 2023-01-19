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
    static let sampleAppetizer = appetizer1
    
    static let appetizers = [appetizer1, appetizer2, appetizer3, appetizer4]
    
    static let appetizer1 = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is my description and thats all.",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizer2 = Appetizer(
        id: 0002,
        name: "Test Appetizer",
        description: "This is my description and thats all.",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizer3 = Appetizer(
        id: 0003,
        name: "Test Appetizer",
        description: "This is my description and thats all.",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizer4 = Appetizer(
        id: 0004,
        name: "Test Appetizer",
        description: "This is my description and thats all.",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 99,
        protein: 99,
        carbs: 99
    )
}
