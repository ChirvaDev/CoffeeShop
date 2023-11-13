//
//  ItemsList.swift
//  CoffeeShop
//
//  Created by Pro on 12.11.2023.
//

import SwiftUI

struct ItemsList: View {
    
    @State private var searchText = ""
    var body: some View {
        
        NavigationView {
            ScrollView {
                ForEach(categories.filter {
                    searchText.isEmpty ? true : $0.title.localizedCaseInsensitiveContains(searchText)
                }) { category in
                    VStack{
                        Text(category.title)
                            .font(.custom("Poppins-Semibold", size: 20))
                            .foregroundColor(.white)
                            .padding(.vertical, 4)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.black.opacity(0.6)))
                        HStack{
                            Text(category.description)
                                .font(.custom("Poppins-Semibold", size: 15))
                                .multilineTextAlignment(.trailing)
                            
                            
                            Image(category.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                        }
                    }
                    .padding()
                    .background(Color.brown)
                    .cornerRadius(17)
                    .padding(.horizontal)
                }
            }
            .searchable(text: $searchText)
            .background(Color.black.opacity(0.1).ignoresSafeArea())
        }
    }
}


struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList()
    }
}
