//
//  HomeView.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 16/04/24.
//

import SwiftUI

struct HomeView: View {
    let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Text("Rick and Morty")
                    .font(.largeTitle)
                charactersGrid
                    .onAppear {
                        viewModel.fetchCharacters()
                    }
            }
        }
    }
    
    var charactersGrid: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(viewModel.characters) { character in
                CharacterCardView(
                    image: character.image,
                    action: {}
                )
                .onAppear {
                    if character == viewModel.characters.last {
                        viewModel.fetchCharacters()
                    }
                }
                .onTapGesture {
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
