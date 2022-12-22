//
//  ModelData.swift
//  landmarks
//
//  Created by Tyler Radke on 12/21/22.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> [T] {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([T].self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self)")
    }
    

}

