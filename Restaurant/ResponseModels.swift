//
//  ResponseModels.swift
//  Restaurant
//
//  Created by Natasha Machado on 2023-05-18.
//

import Foundation

struct MenuResponse: Codable {
    let items: [MenuItem]
}

struct CategoriesResponse: Codable {
    let categories: [String]
}



struct OrderResponse: Codable {
  let prepTime: Int
  
  enum CodingKeys: String, CodingKey {
    case prepTime = "preparation_time"
  } 
}
