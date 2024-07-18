//
//  MainViewModel.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[Movie]> = Observable(nil)
    var dataSource: TrendingMoviesModel?
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows(in section: Int) -> Int {
        return dataSource?.results.count ?? 0
    }
    
    func getData() {
        
        if isLoading.value ?? true {
            return
        }
        
        self.isLoading.value = true
        
        APICaller.shared.getTrendingMovies { [weak self] result in
            guard let self = self else { return }
            
            self.isLoading.value = false
            
            switch result {
            case .success(let data):
                print("getTrendingMovies: \(data.results.count)")
                self.dataSource = data
                self.mapCellData()
            case .failure(let error):
                print("getTrendingMovies: \(error.localizedDescription)")
            }
        }
    }
    
    func mapCellData() {
        self.cellDataSource.value = self.dataSource?.results ?? []
    }
    
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title
    }
    
}
