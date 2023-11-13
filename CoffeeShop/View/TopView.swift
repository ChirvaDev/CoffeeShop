//
//  TopView.swift
//  CoffeeShop
//
//  Created by Pro on 12.11.2023.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "circle.grid.2x2")
                    .font(.custom("Poppins-Regular", size: 22))
                    .padding(10)
                    .foregroundColor(Color.black)
                    .background(Color.brown).opacity(0.6)
                    .cornerRadius(8)
            })
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(10)
                    .foregroundColor(Color.black)
                    .background(Color.brown).opacity(0.6)
                    .cornerRadius(8)
            })
        }
        .overlay(
            HStack(spacing: 9){
                Image(systemName: "location.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.brown)
                
                Text("Kyiv, UA")
                    .font(.custom("Poppins-Semibold", size: 25))
            }
        )
        .padding()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
