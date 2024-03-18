//
//  ProductModel.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import Foundation
@MainActor
class ProductModel:ObservableObject{
    @Published var products: [Product] = []
    let productServices: ProductServices
    init(productServices: ProductServices) {
        self.productServices = productServices
    }
    func getAllProducts() async throws {
          self.products = try await productServices.fetchProducts()
    }
}
