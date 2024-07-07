//
//  TrailerCell.swift
//  Cinema
//
//  Created by Mohamed Saad on 07/07/2024.
//

import SwiftUI

struct TrailerCell: View {
    //Properties
    let trailer: TrailerModel
    //Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 16){
            ZStack {
                Image(trailer.thumbnil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90 , alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Image(systemName: "play.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .shadow(radius: 4)
                
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text(trailer.name)
                    .font(.title3)
                    .foregroundStyle(.accent)
                Text(trailer.headline)
                    .font(.footnote)
                    .lineLimit(3)
                    .foregroundStyle(.secondary)
            }//VStack
        }// HStack
    }
}

#Preview {
    TrailerCell(trailer: TrailerModel(
        id: "jurassic-world-dominion",
        name: "jurassic-world-dominion",
        headline: "This is a short description of the movie."
    )
)
}

