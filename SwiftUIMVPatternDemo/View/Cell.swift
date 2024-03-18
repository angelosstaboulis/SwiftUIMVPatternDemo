//
//  Cell.swift
//  SwiftUIMVPatternDemo
//
//  Created by Angelos Staboulis on 18/3/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI
struct Cell: View {
    @State var product:Product
    var body: some View {
        VStack{
            WebImage(url: URL(string: product.image)) { image in
                image.resizable()
            } placeholder: {
                Rectangle().foregroundColor(.gray)
            }
            .onSuccess { image, data, cacheType in
                
            }
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
            Text(product.title)
            Text(product.description)
            HStack{
                Image("rating")
                Text(String(describing:product.rating.rate))
                Text("("+String(describing:product.rating.count)+" ratings)")
            }
            Text(String(describing:product.price)).frame(width:300,height:45,alignment: .trailing)
        }
    }
}

