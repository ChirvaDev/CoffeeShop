//
//  ResizableLottieView.swift
//  CoffeeShop
//
//  Created by Pro on 11.11.2023.
//

import SwiftUI
import Lottie

struct ResizableLottieView: UIViewRepresentable {
    
    var lottieView: LottieAnimationView
    var color: SwiftUI.Color = .black
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .clear
        addLottieView(to: view)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    func addLottieView(to: UIView){
        // memory properties
        lottieView.backgroundBehavior = .forceFinish
        lottieView.shouldRasterizeWhenIdle = true
        
        lottieView.backgroundColor = .clear
        lottieView.contentMode = .scaleAspectFit
        lottieView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            lottieView.widthAnchor.constraint(equalTo: to.widthAnchor),
            lottieView.heightAnchor.constraint(equalTo: to.heightAnchor)
        ]
        
        to.addSubview(lottieView)
        to.addConstraints(constraints)
    }
}


