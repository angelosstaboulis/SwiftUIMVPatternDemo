//
//  ProductServices.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import Foundation
import Alamofire
class ProductServices{
    let url:URL
    init(url: URL) {
        self.url = url
    }
    func fetchProducts() async throws -> [Product]{
        let (data, _) = try await URLSession.shared.data(from: self.url)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}
