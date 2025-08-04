//
//  ProductsView.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import SwiftUI

struct ProductsView: View {
    let items: [ProductItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("All Products")
                .font(.mainTextSemiBold22)
                .foregroundStyle(.black03)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 17) {
                    ForEach(items) { item in
                        VStack {
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                            
                            Text(item.name)
                                .font(.mainTextSemiBold13)
                                .foregroundStyle(.black02)
                        }
                    }
                }
            }
        }
    }
}


