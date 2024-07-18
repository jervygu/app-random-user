//
//  MovieDetailsViewModel.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation

class MovieDetailsViewModel {
    
    var movie: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        
        self.movieID = movie.id
        self.movieTitle = movie.title
        self.movieDescription = movie.overview
        self.movieImage = makeImageUrl(movie.backdropPath)
    }
    
    private func makeImageUrl(_ imageCode: String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
    
}
