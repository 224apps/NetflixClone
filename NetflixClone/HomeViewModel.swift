//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Abdoulaye Diallo on 12/27/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    //MARK: - Properties
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map { String($0)}
    }
    
    public init(){
        setupMovies()
    }
    
    public  func getMovie(for cat: String ) -> [Movie] {
        return movies[cat] ?? []
    }
    
    //MARK: - Functions
    
    public func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Stand Up Comedy"] = exampleMovies.shuffled()
    }
    
    
    
}
