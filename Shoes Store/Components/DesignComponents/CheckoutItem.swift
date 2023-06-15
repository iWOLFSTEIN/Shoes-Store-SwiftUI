//
//  CheckoutItem.swift
//  Shoes Store
//
//  Created by Talha on 15/06/2023.
//

import SwiftUI

struct CheckoutItem: View {
    
    @State private var itemCount: Int = 0
    @State private var price: Float = 0.00
    
    var body: some View {
        HStack (alignment: .top){
            Image("shoes")
                .resizable()
                .frame(width: 100)
                .cornerRadius(15)
            
            VStack (alignment: .leading){
                
                Text("Sneakers")
                    .font(.system(size: 24))
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
                
                Text("By Addidas")
                    .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.black.opacity(0.4))
                
                Spacer()
                
                HStack {
                    Button {
                        increase()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                    
                    Text("\(itemCount)")
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4))
                   
                    Button {
                        decrease()
                    } label: {
                        Image(systemName: "minus")
                            .foregroundColor(.black)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
            }
            .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
            Spacer()
            
            VStack {
                Text("\(String(format: "%.2f", price))$")
                    .padding(EdgeInsets(top: 9.5, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                
                Text("Remove")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 12.5, trailing: 0))
            }
                
        }
        .frame(height: 100)
        .padding(.horizontal)
    }
    
    func increase() {
        if itemCount < 9 {
            itemCount += 1
            price += 18.00
        }
    }
    
    func decrease() {
        if itemCount > 0 {
            itemCount -= 1
            price -= 18.00
        }
    }
}


struct CheckoutItem_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutItem()
    }
}
