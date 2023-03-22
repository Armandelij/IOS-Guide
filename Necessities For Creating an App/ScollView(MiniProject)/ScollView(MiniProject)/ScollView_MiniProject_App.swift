//
//  ScollView_MiniProject_App.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/14/23.
//

import SwiftUI

@main
struct ScollView_MiniProject_App: App {
    var body: some Scene {
        WindowGroup {
            AnimalCardView(animal: Animal.example1())
        }
    }
}
