//
//  AnimalCardView.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/15/23.
//

import SwiftUI

struct AnimalCardView: View {
    
    let animal: Animal
    let padding: CGFloat = 10
    
    
    var body: some View {
        Image(animal.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
        
        // Puts name in the bottom corner of card
            .overlay(alignment: .bottomTrailing, content: {
                Text(animal.name)
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
            })
    }
}

struct AnimalCardView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalCardView(animal: Animal.example1())
            .padding()
    }
}
