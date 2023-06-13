//
//  HomeScreen.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            SearchField()
            ScrollView {
                LazyVGrid (columns: columns, spacing: 16) {
                    ForEach(shoesImagesUrls, id: \.self) { url in
                        PriceContainer(imageName: "Shoes",  imageUrl: url)
                    }

                }
                .padding()
            }
        }
    }
}
