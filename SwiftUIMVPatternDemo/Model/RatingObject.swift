//
//  RatingObject.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 14/4/24.
//

import Foundation
class RatingObject:Decodable{
    let rate:Double
    let count:Int
    enum CodingKeys: String, CodingKey {
        case rate = "rate"
        case count = "count"
    }
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.count = try container.decode(Int.self, forKey: .count)
    }
}
