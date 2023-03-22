//
//  AnimalTileView.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/15/23.
//

import SwiftUI

struct AnimalTileView: View {
    let animal: Animal
    let size: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        Image(animal.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius:cornerRadius))
            .shadow(radius: 5)
    }
}

struct AnimalTileView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalTileView(animal: Animal.example1(), size: 300, cornerRadius: 15)
    }
}
