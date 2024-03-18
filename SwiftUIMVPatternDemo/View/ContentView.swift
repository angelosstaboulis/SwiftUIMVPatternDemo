//
//  ContentView.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI
struct ContentView: View {
    @EnvironmentObject private var model: ProductModel
    var body: some View {
        NavigationStack {
            List(model.products){product in
                Cell(product: product)
            }.navigationTitle("MV Pattern Demo")
            .navigationBarTitleDisplayMode(.inline)
            
        }.task{
            do {
                try await model.getAllProducts()
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
