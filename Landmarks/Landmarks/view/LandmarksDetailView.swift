//
//  LandmarksDetailView.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import SwiftUI

struct LandmarksDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            ImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Favoritebutton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
                .foregroundColor(.gray)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            Spacer()
        }
    }
}

struct LandmarksDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarksDetailView(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
