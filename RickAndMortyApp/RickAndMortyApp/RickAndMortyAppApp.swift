//
//  RickAndMortyAppApp.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 21/03/23.
//

import SwiftUI

@main
struct RickAndMortyAppApp: App {
    @StateObject var courseViewModel = CourseViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(courseViewModel)
        }
    }
}
