//
//  HomeView.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 21/03/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    DateTitle(title: "Learn SwiftUI")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.horizontal, 20)
                    FeaturedCourseList()
                        .padding(.top, 20)
                    
                    Text("All courses")
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 40)
                    CourseList()
                        .padding(.top, 20)
                }
            }
            Color(.white)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
    
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CourseViewModel())
    }
}
