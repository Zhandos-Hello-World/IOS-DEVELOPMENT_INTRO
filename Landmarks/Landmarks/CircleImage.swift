//
//  CircleImage.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 26.04.2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("avatar1")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 10)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
