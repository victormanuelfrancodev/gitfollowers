//
//  NetworkManager.swift
//  githubfollowers
//
//  Created by Victor Manuel Lagunas Franco on 20/07/20.
//  Copyright © 2020 Victor Manuel Lagunas Franco. All rights reserved.
//

import UIKit

class NetworkManager{
    static let shared = NetworkManager()
    private let baseURL = "https://api.github.com"
    let cache = NSCache<NSString,UIImage>()
    private init(){
        
    }
    
    func getFollowers(for username: String,page:Int, completed: @escaping(Result<[Follower], GFError>)->Void){
        let endPoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endPoint)else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data,response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
        
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            }catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
