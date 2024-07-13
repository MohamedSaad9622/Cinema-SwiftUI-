//
//  BrowserView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct BrowserView: View {
    
    //Properties
    @State var movies: [MovieModel] = decode(file: "movies.json")
    //Body
    var body: some View {
        
        NavigationStack{
                
            List {
                CoverView()
                    .frame(height: 235)
                ForEach(movies) { movie in
                    NavigationLink {
                        MovieDetailsView(movie: movie)
                    } label: {
                        MovieCell(movie: movie)
                    }

                }
                .onDelete(perform: { indexSet in
                    movies.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    movies.swapAt(indices.count, newOffset)
                })
                
                
                HStack {
                    Spacer()
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                    .frame(height: 150)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("All right reserved")
                        .font(.footnote)
                    Spacer()
                }
            }//List
            .navigationTitle("Cinema")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
            })

        }
        
    }
}

#Preview {
    BrowserView()
}
