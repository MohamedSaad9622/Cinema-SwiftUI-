//
//  TrailerPlayerView.swift
//  Cinema
//
//  Created by Mohamed Saad on 07/07/2024.
//

import SwiftUI
import AVKit

struct TrailerPlayerView: View {
    //MARK: - properties
    let trailer: String
    
    //MARK: - Body
    var body: some View {
        VideoPlayer(player: playVideo(file: trailer, fileFormat: "mp4"))
//            .overlay(alignment: .top) {
//                HStack {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 32, alignment: .center)
//                        .padding(.top, 5)
//                    .padding(.horizontal, 5)
//                    
//                    Text(trailer)
//                        .font(.title3)
//                        .padding()
//                        .foregroundStyle(.accent)
//                }//HStack
//            }//overlay
            .navigationTitle(trailer)
        
    }
}

#Preview {
    TrailerPlayerView(trailer: "jurassic-world-dominion")
}
