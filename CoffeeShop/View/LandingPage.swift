//
//  LandingPage.swift
//  CoffeeShop
//
//  Created by Pro on 11.11.2023.
//

import SwiftUI

struct LandingPage: View {
    @Binding var selectedCategory: Category
    var body: some View {
        
        VStack{
            TopView()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack(spacing: 10){
                    //Top View
                    HStack(spacing: 10){
                        VStack{
                            HStack(spacing: 10){
                                Text("It's a Great Day\n")
                                +
                                Text("For Coffee")
                                    .foregroundColor(.brown)
                            }
                            .font(.custom("Poppins-Semibold", size: 25))
                            
                            Button(action: {}, label: {
                                Text("Order Now")
                                    .font(.custom("Poppins-Semibold", size: 17))
                                
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.brown))
                            })
                        }
                        Image("Latte")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(17)
                    .padding(.horizontal)
                    
                    //Categories
                    Text("Categories:")
                        .font(.custom("Poppins-Semibold", size: 23))
                        .padding(5)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ForEach(categories){category in
                                HStack(spacing: 10){
                                    Text(category.tag)
                                        .font(.custom("Poppins-Semibold", size: 15))
                                        .foregroundColor(.white)
                                    
                                }
                                .padding(11)
                                .background(selectedCategory.id == category.id ? .brown : Color.black.opacity(0.7))
                                .cornerRadius(15)
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedCategory = category
                                    }
                                }
                            }
                            .padding(.horizontal, 3)
                        }
                    })
                    
                    HStack{
                        
                        Text("Popular Now:")
                            .font(.custom("Poppins-Semibold", size: 23))
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            
                            HStack{
                                Text("View All")
                                    .font(.custom("Poppins-Semibold", size: 18))
                                    .foregroundColor(Color.brown)
                                
                                Image(systemName: "chevron.right")
                                    .font(.custom("Poppins-Semibold", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 5)
                                    .background(Color.brown)
                                    .cornerRadius(5)
                            }
                        })
                    }
                    .padding(5)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 20){
                            ForEach(categories){item in
                                CategoryItemRowView(item: item)
                                
                            }
                        }
                        .padding()
                    })
                }
                .padding(.vertical)
            })
        }
        // background color
        .background(Color.black.opacity(0.1).ignoresSafeArea())
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage(selectedCategory: .constant(categories.first!))
    }
}
