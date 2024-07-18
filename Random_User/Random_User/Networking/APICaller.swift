//
//  APICaller.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation

enum APError: Error {
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
}

public class APICaller {
    
    static let shared = APICaller()
    
    func getTrendingMovies(completed: @escaping (Result<TrendingMoviesModel, APError>) -> Void) {
        guard let url = URL(string: NetworkConstants.shared.serverAddress + "trending/movie/day?api_key=" + NetworkConstants.shared.apiKey) else {
            completed(.failure(.invalidURL))
            return
        }
               
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ =  error {
                completed(.failure(.unableToComplete))
                return
            }
                        
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(TrendingMoviesModel.self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
}
