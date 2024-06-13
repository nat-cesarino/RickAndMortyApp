//
//  CharacterDetailView.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 16/04/24.
//

import SwiftUI

struct CharacterDetailView: View {
    
    let backgroundColor = Color.green

    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                GeometryReader { reader in
                    let size = reader.size
                    Image("Lora")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -reader.frame(in: .global).minY)
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: reader.frame(in: .global).minY + 500
                        )
                }
                .frame(height: 550)
                
                VStack(alignment: .leading, spacing: 15) {
                    titleLabel
                        .padding(.horizontal, 20)
                        .padding(.top, 16)
                    Spacer()
                }
            }
            .ignoresSafeArea()
            
            VStack {
                HStack{
                    BackButton {
                   //     coordinator.back()
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
    
    var titleLabel: some View {
        HStack {
            VStack {
                HStack {
                    Text("Character Name")
                        .font(.headline)
                        .foregroundColor(.black)
                    Spacer()
          //          favoriteButton.padding(.trailing, -16)
                }
                HStack {
                    Text("Category")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .textCase(.uppercase)
                    Spacer()
                }
                .padding(.top, 5)
            }
            
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView()
    }
}


