//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import SwiftUI

struct Favoritebutton: View {
    @State var isFavorite: Bool
    
    var body: some View {
        Button(action: {},
               label: {
            Label("", systemImage: "fill.star")
        })
    }
}

struct Favoritebutton_Previews: PreviewProvider {
    static var previews: some View {
        Favoritebutton(isFavorite: true)
    }
}
