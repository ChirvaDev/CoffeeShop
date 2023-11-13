//
//  Home.swift
//  CoffeeShop
//
//  Created by Pro on 08.11.2023.
//

import SwiftUI
import Lottie

struct Home: View {
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @State var selectedCategory: Category = categories[1]
    @State var selectedTab: Tab = .animation2
    @State var animatedIcons: [AnimatedIcon] = {
        var tabs: [AnimatedIcon] = []
        for tab in Tab.allCases{
            tabs.append(.init(tabIcon: tab, lottieView: LottieAnimationView(name: tab.rawValue, bundle: .main)))
        }
        return tabs
    }()
    
    var body: some View {
        // Tab View
        VStack(spacing: 0) {
            TabView(selection: $selectedTab){
                LandingPage(selectedCategory: $selectedCategory)
                    .tag(Tab.animation2)
                
                ItemsList()
                    .tag(Tab.animation1)
                
                LocationView()
                    .tag(Tab.animation3)
            }
            
            // Custom Tab Bar
            TabBar()
        }
        .padding(.vertical, -15)
        .background(Color.brown.opacity(0.4))
    }
    
    @ViewBuilder
    func TabBar() -> some View{
        HStack{
            ForEach(animatedIcons){ icon in
                ResizableLottieView(lottieView: icon.lottieView)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        //updating current tab and playing animation
                        selectedTab = icon.tabIcon
                        icon.lottieView.play{completed in
                                //some logic
                        }
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
