//
//  AnimalRowView.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/15/23.
//

import SwiftUI

struct AnimalRowView: View {
    
    let animal: Animal // Access to data
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(animal.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(animal.name)
                
                Text(animal.description)
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 5)
            
        }
    }
}

struct AnimalRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
        AnimalRowView(animal: Animal.example1())
        AnimalRowView(animal: Animal.example2())
        }
        .padding()
    }
        
}
