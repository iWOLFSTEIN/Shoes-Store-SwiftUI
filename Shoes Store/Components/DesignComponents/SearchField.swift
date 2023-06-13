//
//  SearchField.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct SearchField: View {
    
    let textFieldBackGroundColor = Color("textFieldColor")
    
    var body: some View {
        HStack (spacing: 16){
            TextField(/*@START_MENU_TOKEN@*/"Search shoes..."/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(textFieldBackGroundColor)
                .cornerRadius(10)
            
            Image("cart")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing)
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
    }
}
