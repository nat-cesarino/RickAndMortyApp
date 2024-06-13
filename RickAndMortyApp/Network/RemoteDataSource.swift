//
//  RemoteDataSource.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 17/04/24.
//

import Foundation

class RemoteDataSource {
 
    // =========================================================
    // MARK: - Properties
    // =========================================================
    
    var characters: [CharacterModel] = []
    var character: CharacterModel?
    
    // =========================================================
    // MARK: - Initializer
    // =========================================================
    
    init() {}
    
    // =========================================================
    // MARK: - Methods
    // =========================================================
    
//    func getCharacters(completion: @escaping ([CharacterModel]) -> Void) {
//        APICaller.shared.getCharacters { result in
//            switch result {
//            case .success(let characters):
//                self.characters = characters
//                completion(self.characters)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
}
