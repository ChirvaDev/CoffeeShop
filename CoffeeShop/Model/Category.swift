//
//  Category.swift
//  CoffeeShop
//
//  Created by Pro on 08.11.2023.
//

import SwiftUI

//Category Model
struct Category: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
    var tag: String
    var price: String
    var description: String
}

var categories = [
    
    Category(image: "Cappuccino", title: "Cappuccino", tag: "Arabica", price: "2.34", description: "A classic Italian coffee. Consists of equal parts of espresso, steamed milk, and milk foam. Topped with a dusting of cocoa powder or cinnamon."),
    
    Category(image: "Coffee pot", title: "Coffee pot", tag: "Robusta", price: "6.54", description: "A method of brewing coffee, often used in households. Coffee grounds are steeped in hot water, and the brewed coffee is served from the pot."),
    
    Category(image: "Frappe", title: "Frappe",  tag: "Lactose-free", price: "3.39", description: "A cold coffee beverage blended with ice. Often sweetened with sugar and flavored syrups. Topped with whipped cream for a creamy texture."),
    
    Category(image: "Espresso", title: "Espresso", tag: "Filter", price: "2.89", description: "A concentrated coffee brewed by forcing hot water through finely-ground coffee. Served in small, concentrated shots. The base for many other coffee drinks."),
    
    Category(image: "Machiatto", title: "Machiatto", tag: "Fully washed", price: "2.99", description: "An espresso stained or marked with a small amount of milk. Comes in variations like caramel or vanilla macchiatos. Known for its strong coffee flavor with a hint of creaminess.")
]
