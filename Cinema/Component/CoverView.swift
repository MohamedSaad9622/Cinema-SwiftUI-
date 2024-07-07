//
//  CoverView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI

struct CoverView: View {
    //Properties
    let covers: [CoverModel] = decode(file: "covers.json")
    //Body
    var body: some View {
        TabView {
            ForEach(covers) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(.page)
        

    }
}

#Preview {
    CoverView()
}
