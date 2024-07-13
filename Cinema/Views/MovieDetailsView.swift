//
//  MovieDetailsView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    
    //MARK: - Properties
    let movie: MovieModel
    
    //MARK: -   Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 235, alignment: .center)
                
                TitleHeaderView(title: "person", image: "person")
                
                List {
                    ForEach(movie.actor, id: \.self) { actor in
                        Text(actor)
                            .font(.title)
                            .foregroundStyle(.red)
                    }
                    
                }//List
                .scrollIndicators(.hidden)
                .listStyle( .inset )
                .frame(minWidth: 200, idealWidth: 200, minHeight: 200)
                    
                TitleHeaderView(title: "Movie Images", image: "photo.on.rectangle.angled")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(movie.gallery, id: \.self) { item in
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 375)
                        }
                            
                    }
                }//ScrollView
                
                TitleHeaderView(title: "More about ...", image: "ellipsis.circle")
                
                Text(movie.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
                
                GroupBox {
                    HStack{
                        Image(systemName: "globe")
                        Text("Movie website")
                        
                        Spacer()
                        Group {
                            Image(systemName: "arrow.up.right.square")
            
                            Link(movie.name, destination: (URL(string: movie.link) ?? URL(string: "https://www.google.com"))!)
                        }//Group
                        .foregroundStyle(.accent)
                        
                    }//HStack
                }//GroupBox
                
            }//Main VStack
            .padding(.all, 5)
        }//Main ScrollView
        .navigationTitle(movie.name)
        
    }
}

#Preview {
    MovieDetailsView(movie: MovieModel(
        id: "jurassic-world-dominion",
        name: "jurassic-world-dominion",
        headline: "This is a short description of the movie.",
        description: "After the dinosaurs escaped into the real world at the end of Fallen Kingdom, Trevorrow has revealed that Owen is still trying to help them when we reunite with him in the third movie.The parasaurs are in danger of being poached. There's a lot of shady types out there who want to get their hands on dinosaurs, so he's working to protect them, he explained. As for Claire though, Trevorrow is remaining tight-lipped about where we find her at the start of Dominion, but did add that she's questioning her methods, and whether she can stay safe.",
        link: "This is a detailed description of the movie.",
        image: "jurassic-world-dominion",
        gallery: ["jurassic-world-dominion-1",
                  "jurassic-world-dominion-2",
                  "jurassic-world-dominion-3",
                  "jurassic-world-dominion-4"],
        actor: ["Actor 1", "Actor 2", "Actor 3"]
    ))
}

struct TitleHeaderView: View {
    
    var title: String
    var image: String
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .imageScale(.large)
                .foregroundStyle(.accent)
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}
