//
//  SearchField.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct SearchField: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
//    init(viewModel: HomeViewModel) {
//        self.viewModel = viewModel
//    }
    
    let textFieldBackGroundColor = Color("textFieldColor")
    
    var body: some View {
        HStack (spacing: 16){
            TextField("Search shoes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(textFieldBackGroundColor)
                .cornerRadius(10)
            
            ZStack (alignment: .topTrailing) {
                Image("cart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.trailing)
               
                if viewModel.cartItemsCount != 0 {
                    Text("\(viewModel.cartItemsCount)")
                        .font(.system(size: 6))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
                        .background(.red)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
    }
}
