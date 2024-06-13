//
//  BackButton.swift
//  RickAndMortyApp
//
//  Created by Nathalie Pires cesarino on 16/04/24.
//

import SwiftUI

struct BackButton: View {
    var dismiss: (() -> Void)?
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.green)
                .frame(height: 38)
                .overlay(
                    Image("ic_back_arrow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                )
        }.onTapGesture {
            dismiss?()
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}

