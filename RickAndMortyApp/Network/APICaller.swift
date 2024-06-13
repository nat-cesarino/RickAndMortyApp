//
//  APICaller.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 17/04/24.
//

import Foundation

class APICaller {
    
    static let shared = APICaller()
    
    enum Endpoints {
        static let baseUrl = "https://rickandmortyapi.com/api"
        
        case getCharacters(page: Int)
        
        var stringValue: String {
            switch self {
            case .getCharacters(let page): return Endpoints.baseUrl + "/character/?page=\(page)"
            }
        }
        
        var url: URL {
            return URL(string: stringValue)!
        }
    }
    
    func getCharacters(page: Int, completion: @escaping ([CharacterModel]) -> Void) {
        let group = DispatchGroup()
        group.enter()
        
        let url = Endpoints.getCharacters(page: page).url
        print(url)
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            defer { group.leave() }
            
            guard let data = data, !data.isEmpty, error == nil else {
                completion([])
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(CharactersResponse.self, from: data)
                completion(response.results)
            } catch {
                print("Error: \(error)")
                completion([])
            }
        }
        
        task.resume()
        
        group.notify(queue: .main) {
            
        }
    }
}
