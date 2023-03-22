//
//  ContentView.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animal = Animal.examples() // Access to the animal information
    
    let rows = Array(repeating: GridItem(.fixed(100), spacing: 0), count: 2)
    
    var body: some View {
        NavigationView {
            
            // start of 1st Section
            
            ScrollView {
                    ScrollView(.horizontal) {
                        LazyHStack {
                        ForEach(animal) { animal in
                            AnimalCardView(animal: animal)
                        }
                    }
                        .padding()
                }
                    .frame(height: 150)
                
                // end of 1st Section
                
//                // start of 2nd Section
//
                ScrollView(.horizontal) {

                    LazyHGrid(rows: rows, spacing: 0) {
                        ForEach(animal) { animal in
                            AnimalTileView(animal: animal, size: 120, cornerRadius: 0)
                        }
                    }

                }
//
//                // end of 2nd Section
//
//                // start of 3rd Section
                LazyVStack(alignment: .leading, spacing: 10, pinnedViews: .sectionHeaders) {

                    Section {
                        ForEach(animal) { animal in
                            AnimalRowView(animal: animal)

                        }
                    } header: {
                        Text("Third Section")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background {
                                Color.white
                            }
                    }

                }
                .padding(10)
                
                // end of 3rd Section
                
                
            }
            .navigationTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
