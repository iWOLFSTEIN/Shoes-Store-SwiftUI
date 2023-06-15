//
//  SearchField.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct SearchField: View {
    
    @ObservedObject var viewModel: HomeViewModel
    @State private var isActive = false
    
    let textFieldBackGroundColor = Color("textFieldColor")
    
    var body: some View {
        HStack (spacing: 16){
            TextField("Search shoes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(textFieldBackGroundColor)
                .cornerRadius(10)
            
            ZStack (alignment: .topTrailing) {
                NavigationLink(destination: CheckoutView(), isActive: $isActive) {
                    Image("cart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                        .onTapGesture {
                            isActive = true
                        }
                }
                .isDetailLink(false)
                
                if viewModel.cartItemsCount != 0 {
                    Text("\(viewModel.cartItemsCount)")
                        .font(.system(size: 6))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 14, height: 14)
                        .background(.red)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
    }
}
