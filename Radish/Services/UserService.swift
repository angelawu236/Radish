//
//  UserService.swift
//  Radish
//
//  Created by Angela Wu on 10/14/25.
//
import Foundation


func decode(_ file: String) -> User {
    // "Backend" must match your blue folder name exactly
    guard let url = Bundle.main.url(forResource: file, withExtension: "json") else {
        // Helpful debug info
        print("Bundle path:", Bundle.main.bundlePath)
        print("All JSON files in Backend:", Bundle.main.paths(forResourcesOfType: "json", inDirectory: "Backend"))
        fatalError("Failed to locate \(file).json in Backend folder of app bundle.")
    }

    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode(User.self, from: data)
    } catch {
        fatalError("Failed to decode \(file).json: \(error)")
    }
}
