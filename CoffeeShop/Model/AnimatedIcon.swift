//
//  AnimatedIcon.swift
//  CoffeeShop
//
//  Created by Pro on 11.11.2023.
//

import SwiftUI
import Lottie

//Animated Icon Model
struct AnimatedIcon: Identifiable{
    var id: String = UUID().uuidString
    var tabIcon: Tab
    var lottieView: LottieAnimationView
}
