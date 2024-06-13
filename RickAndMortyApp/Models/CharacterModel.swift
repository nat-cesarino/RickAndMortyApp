//
//  CharacterModel.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 17/04/24.
//

import Foundation

struct CharactersResponse: Codable {
    let info: InfoModel
    let results: [CharacterModel]
}

struct InfoModel: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct CharacterModel: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let url: String
    let created: String
}
