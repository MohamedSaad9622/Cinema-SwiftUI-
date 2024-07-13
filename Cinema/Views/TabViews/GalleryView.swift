//
//  galleryView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct GalleryView: View {
    
    //MARK: - Properties
    
    @State var layoutColumns = 3
    @State var layout : [GridItem] = Array(repeating: GridItem(), count: 3)
    let movies: [MovieModel] = decode(file: "movies.json")
    @State var selectedImage = "men-in-black"
    @State var buttonImage = "rectangle.grid.1x2"
    
    
    //MARK: - Function
    
    func switchLayout(){
        if layoutColumns == 1 {
            layoutColumns = 2
            buttonImage = "square.grid.3x3"
            
        }else if layoutColumns == 2 {
            layoutColumns = 3
            buttonImage = "rectangle.grid.1x2"
        }else{
            layoutColumns = 1
            buttonImage = "square.grid.2x2"
        }
        layout = Array(repeating: GridItem(), count: layoutColumns)
    }
    
    //MARK: - Body
    var body: some View {
        
        NavigationStack {
            VStack{
                
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(height: 300)
                    .padding()
                    
                
                Divider()
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout, content: {
                        ForEach(movies) { movie in
                            Image(movie.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .onTapGesture(perform: {
                                    selectedImage = movie.image
                                })
                        }//ForEach
                    })//LazyVGrid
                }//ScrollView
                Spacer()
                
            }//VStack
            .navigationTitle("Gallery")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        switchLayout()
                    }, label: {
                        Image(systemName: buttonImage)
                                .font(.title3)
                    })
                }
            })
            
        }//NavigationStack
    }
}

#Preview {
    GalleryView()
}
