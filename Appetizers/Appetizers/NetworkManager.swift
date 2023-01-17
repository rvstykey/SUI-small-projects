//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 17.01.23.
//

import Foundation

final class NetworkManager {
    typealias AppetizersCompletion = (Result<[Appetizer], AppetizersError>) -> Void
    
    static let shared = NetworkManager()
    
    private let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private lazy var appetizersURL = baseURL + "appetizers"

    private init() {}
    
    func getAppetizers(completed: @escaping AppetizersCompletion) {
        guard let url = URL(string: appetizersURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard error == nil else {
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
                let data = try decoder.decode(Appetizers.self, from: data)
                completed(.success(data.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
