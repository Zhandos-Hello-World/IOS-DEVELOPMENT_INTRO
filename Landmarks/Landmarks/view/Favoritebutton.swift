//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import SwiftUI

struct Favoritebutton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct Favoritebutton_Previews: PreviewProvider {
    static var previews: some View {
        Favoritebutton(isSet: .constant(true))
    
    }
}
