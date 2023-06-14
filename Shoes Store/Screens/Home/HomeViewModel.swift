//
//  HomeViewModel.swift
//  Shoes Store
//
//  Created by Talha on 14/06/2023.
//

import Combine

class HomeViewModel: ObservableObject {
    
    @Published var cartItemsCount: Int = 0
    
    func addItemToCart() {
        cartItemsCount += 1
        print("something \(cartItemsCount)")
    }
}
