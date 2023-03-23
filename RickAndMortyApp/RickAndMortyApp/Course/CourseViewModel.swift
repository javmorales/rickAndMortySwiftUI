//
//  CourseViewModel.swift
//  RickAndMortyApp
//
//  Created by Victor Arroyo on 22/03/23.
//

import Foundation
import Apollo

class CourseViewModel: ObservableObject {
    
    @Published public private(set) var courses: [Course] = []
    
    func fetch() async {
        do {
            let result = try await queryCourses()
            if let result = result {
                if let courseCollection = result.data?.courseCollection {
                    self.courses = process(data: courseCollection)
                }
            }
        } catch {
            print("error", error)
        }
    }
    
    private func process(data: CoursesData) -> [Course] {
        let content = CoursesCollection(data)
        return content.courses
    }
    
    private func queryCourses() async throws -> GraphQLResult<CourseQuery.Data>? {
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.fetch(query: CourseQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    print("Successfully got a GraphQL result: \(graphQLResult)")
                    continuation.resume(returning: graphQLResult)
                case .failure(let error):
                    if let error = error as? Never {
                        continuation.resume(throwing: error)
                    }
                }
            }
        }
    }
}
