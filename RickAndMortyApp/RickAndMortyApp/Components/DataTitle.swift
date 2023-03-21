//
//  DataTitle.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 21/03/23.
//

import SwiftUI

struct DateTitle: View {
    var title: String
    @State private var date: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(date.uppercased())
                .font(.footnote)
                .fontWeight(.medium)
                .opacity(0.7)
            
            Text(title)
                .font(.largeTitle).bold()
        }
        .onAppear {
            date = Date.now.formatted(.dateTime.weekday(.wide).month().day())
        }
    }
}

struct DateTitle_Previews: PreviewProvider {
    static var previews: some View {
        DateTitle(title: "Learn SwiftUI")
    }
}
