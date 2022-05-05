//
//  LandmarksListView.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import SwiftUI

struct LandmarksListView: View {
    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favourite only")
                })
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarksDetailView(landmark: landmark)
                    } label: {
                        LandmarksRow(landmark: landmark)
                    }
                }
            }.navigationTitle("Landmarks List")
        }
    }
}

struct LandmarksListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksListView()
    }
}
