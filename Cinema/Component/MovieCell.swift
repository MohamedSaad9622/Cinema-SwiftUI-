//
//  MovieCell.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct MovieCell: View {
    //Properties
    let movie: MovieModel
    //Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 16){
            ZStack {
                Image(movie.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90 , alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text(movie.name)
                    .font(.title3)
                    .foregroundStyle(.accent)
                Text(movie.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .foregroundStyle(.secondary)
            }//VStack
        }// HStack
    }
}

#Preview {
    MovieCell(movie: MovieModel(
        id: "jurassic-world-dominion",
        name: "jurassic-world-dominion",
        headline: "This is a short description of the movie.",
        description: "placeholderImage",
        link: "This is a detailed description of the movie.",
        image: "jurassic-world-dominion",
        gallery: ["image1", "image2"],
        actor: ["Actor 1", "Actor 2"]
    )
)
}
