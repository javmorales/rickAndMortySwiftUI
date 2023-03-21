//
//  CourseList.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 21/03/23.
//

import SwiftUI

struct CourseList: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 15)]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 15) {
            ForEach(0..<10, id: \.self) { number in
                CourseCard()
            }
        }
        .padding(10)
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
