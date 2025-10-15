//
//  User.swift
//  Radish
//
//  Created by Angela Wu on 10/14/25.
//

import Foundation

struct User : Identifiable, Codable {
    let id: String
    let username: String
    let following: [String]
    let followers: [String] 
    let recipes: [Recipe]
}
