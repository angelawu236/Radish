//
//  Recipe.swift
//  Radish
//
//  Created by Angela Wu on 10/14/25.
//

import Foundation

struct Recipe : Codable {
    let category: String
    let title: String
    let directions: [String]
    let ingredients: [String]
    let totalTime: String
    let pictures: [String]
}
