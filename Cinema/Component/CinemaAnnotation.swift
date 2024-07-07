//
//  CinemaAnnotation.swift
//  Cinema
//
//  Created by Mohamed Saad on 07/07/2024.
//

import SwiftUI

struct CinemaAnnotation: View {
    //MARK: - Properties
    @State var animation = 0.0
    let image: String
    
    //MARK: - Body
    var body: some View {
        ZStack{
            
            Circle()
                .fill(.accent)
                .frame(width: 54)
                
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 50)
                .foregroundColor(.accentColor)
                .scaleEffect( 1 + animation )
                .opacity(1 - animation)
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 48)
                .clipShape(Circle())
            
        }//ZStack
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        })
    }
}

#Preview {
    CinemaAnnotation(image: "logo")
}
