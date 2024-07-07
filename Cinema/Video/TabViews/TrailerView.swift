//
//  TrailerView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct TrailerView: View {
    
    //MARK: - properties
    
    @State var trailers: [TrailerModel] = decode(file: "trailers.json")
    
    //MARK: -  Body
    var body: some View {
       
        NavigationStack {
            List(trailers) { trailer in
                NavigationLink {
                    TrailerPlayerView(trailer: trailer.id)
                } label: {
                    TrailerCell(trailer: trailer)
                }
            }//List
            .scrollIndicators(.hidden)
            .navigationTitle("Movie Trailers")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        trailers.reverse()
                    }, label: {
                        Image(systemName: "shuffle")
                    })
                }
            })
        }//NAvigationStack
        
    }
}

#Preview {
    TrailerView()
}
