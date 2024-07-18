//
//  NetworkConstants.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation

class NetworkConstants {
    public static var shared = NetworkConstants()
    
    private init() {
        // Singleton
    }
    
    public var apiKey: String {
        get { // https://api.themoviedb.org/3/movie/11?api_key=4dcc0cb5bbad7fb3209bd65aca372efe
            return "4dcc0cb5bbad7fb3209bd65aca372efe"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500"
        }
    }
}




//import Foundation
//
//let url = URL(string: "https://api.themoviedb.org/3/movie/popular")!
//var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
//let queryItems: [URLQueryItem] = [
//  URLQueryItem(name: "language", value: "en-US"),
//  URLQueryItem(name: "page", value: "1"),
//]
//components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems
//
//var request = URLRequest(url: components.url!)
//request.httpMethod = "GET"
//request.timeoutInterval = 10
//request.allHTTPHeaderFields = [
//  "accept": "application/json",
//  "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0ZGNjMGNiNWJiYWQ3ZmIzMjA5YmQ2NWFjYTM3MmVmZSIsIm5iZiI6MTcyMTI3NDgzMS43MzkzNzEsInN1YiI6IjYwZDNmNjQ5MGU2NGFmMDA3NDliNTk1ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Yo4mqHv619M_ssJIaoSfw2pK7Z3T0tfg3ZvuzCo70_s"
//]
//
//let (data, _) = try await URLSession.shared.data(for: request)
//print(String(decoding: data, as: UTF8.self))

//curl --request GET \
//     --url 'https://api.themoviedb.org/3/movie/11?api_key=4dcc0cb5bbad7fb3209bd65aca372efe'
