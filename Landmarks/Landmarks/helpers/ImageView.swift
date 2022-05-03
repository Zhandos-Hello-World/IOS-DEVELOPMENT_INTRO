//
//  ImageView.swift
//  Landmarks
//
//  Created by Zhandos Baimurat on 03.05.2022.
//

import SwiftUI

struct ImageView: View {
    @State var image: Image
    
    var body: some View {
        image.resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(lineWidth: 3)
            }
            .shadow(radius: 12)

            
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: landmarks[2].image)
    }
}
