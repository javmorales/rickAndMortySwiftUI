//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Learn More")
                }
        }
        .task {
            await courseViewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
