//
//  SwiftUIMVPatternDemoApp.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import SwiftUI

@main
struct SwiftUIMVPatternDemoApp: App {
    private var service = ProductServices(url: URL(string: "https://fakestoreapi.com/products/")!)
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environmentObject(ProductModel(productServices: service))
    }
}
