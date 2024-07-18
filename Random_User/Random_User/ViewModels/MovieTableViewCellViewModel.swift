//
//  MovieTableViewCellViewModel.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation

class MovieTableViewCellViewModel {
    var id: Int
    var title: String
    var date: String
    var rate: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title
        self.date = movie.releaseDate
        self.rate = "\(movie.voteAverage)/10"
//        self.imageUrl = URL(string: movie.posterPath)
        self.imageUrl = makeImageUrl(movie.posterPath)
        
        
    }
    
    private func makeImageUrl(_ imageCode: String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
}
