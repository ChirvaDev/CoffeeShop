//
//  CategoryItemRowView.swift
//  CoffeeShop
//
//  Created by Pro on 10.11.2023.
//

import SwiftUI

struct CategoryItemRowView: View {
    var item: Category
    var body: some View {
        VStack(spacing: 10){
            
            Image(systemName: "flame")
                .foregroundColor(.red)
                .padding(10)
                .background(Color.orange.opacity(0.1))
                .clipShape(Circle())
                .padding(30)
                .frame(width: 10, height: 10, alignment: .leading)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Text(item.title)
                .font(.custom("Poppins-Semibold", size: 18))
            
            (
                Text("$ ")
                    .font(.custom("Poppins-Semibold", size: 22))
                    .foregroundColor(.brown)
                +
                Text(item.price)
                    .font(.custom("Poppins-Semibold", size: 28))
            )
        }
        
        .padding()
        .background(Color.white)
        .cornerRadius(25)
    }
}


struct CategoryItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
