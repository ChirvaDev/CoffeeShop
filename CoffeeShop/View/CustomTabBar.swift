//
//  CustomTabBar.swift
//  CoffeeShop
//
//  Created by Pro on 10.11.2023.
//

//import SwiftUI
//
//struct CustomTabBar: View {
//
//    @Binding var selectedTab: String
//    @Namespace var animation
//
//    var body: some View {
//        HStack{
//            //Tab Bar Button
//            TabBarButton(animation: animation, image: "animation1", selectedTab: $selectedTab)
//        }
//    }
//}
//
//struct CustomTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct TabBarButton: View{
//
//    var animation: Namespace.ID
//    var image: String
//    @Binding var selectedTab: String
//
//    var body: some View{
//
//        Button(action: {}, label: {
//
//            Image(image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 30, height: 30)
//
//            if selectedTab == image{
//                Circle()
//                    .fill(Color.brown)
//                    .frame(width: 8, height: 8)
//            }
//
//        })
//    }
//}
