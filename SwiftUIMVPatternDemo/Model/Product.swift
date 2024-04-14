//
//  Product.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import Foundation
class Product:Decodable,Identifiable{
    let id:Int
    let title:String
    let price:Double
    let description:String
    let category:String
    let image:String
    let rating:RatingObject

    enum CodingKeys: String, CodingKey {
      case id = "id"
      case title = "title"
      case price = "price"
      case description = "description"
      case category = "category"
      case image = "image"
      case rating = "rating"
    }
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.price = try container.decode(Double.self, forKey: .price)
        self.description = try container.decode(String.self, forKey: .description)
        self.category = try container.decode(String.self, forKey: .category)
        self.image = try container.decode(String.self, forKey: .image)
        self.rating = try container.decode(RatingObject.self, forKey: .rating)
    }
}
