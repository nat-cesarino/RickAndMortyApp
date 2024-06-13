//
//  HomeViewModel.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 17/04/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var characters: [CharacterModel] = []
    private var currentPage = 1
    private var isLoading = false
    
    func fetchCharacters() {
        guard !isLoading else { return }
        isLoading = true
        
        APICaller.shared.getCharacters(page: currentPage) { [weak self] fetchedCharacters in
            DispatchQueue.main.async {
                self?.characters.append(contentsOf: fetchedCharacters)
                self?.currentPage += 1
                self?.isLoading = false
            }
        }
    }
}
