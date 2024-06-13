//
//  CharacterCardView.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 16/04/24.
//

import Foundation
import SwiftUI

struct CharacterCardView: View {
    let image: String
    let action: (() -> (Void))?
    
    var body: some View {
        AsyncImage(url: URL(string: image)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            } else if phase.error != nil {
                Color.red
                    .frame(width: 100, height: 100)
            } else {
                ProgressView()
                    .frame(width: 100, height: 100)
            }
        }
        .onTapGesture {
            action?()
        }
    }
}

#Preview {
    CharacterCardView(image: "Lora", action: {})
}
