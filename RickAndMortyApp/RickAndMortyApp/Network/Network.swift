//
//  Network.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 22/03/23.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql.contentful.com/content/v1/spaces/twsg3isr6tvy?access_token=RiIKg826Z-XEbymMT3-gvH9qV9Kz79LxNyCEdERVOlI")!)

}
