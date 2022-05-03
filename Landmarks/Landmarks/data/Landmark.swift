//
//  Landmark.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    var description: String
    
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    private var coordinates: Coordinates
    
    
    private struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
