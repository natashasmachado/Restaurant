//
//  Order.swift
//  Restaurant
//
//  Created by Natasha Machado on 2023-05-18.
//

import Foundation


struct Order: Codable {
    var menuItems: [MenuItem]
  
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

