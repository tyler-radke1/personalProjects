//
//  Landmark.swift
//  landmarks
//
//  Created by Tyler Radke on 12/21/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Codable, Hashable {
    
    var name: String
    var state: String
    var id: Int
    var park: String
    var description: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    
}


