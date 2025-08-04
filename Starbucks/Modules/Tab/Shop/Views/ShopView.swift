//
//  ShopView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
            Color(.gray08)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 0) {
                    OnLineView(item: OnLineItemsData.onLineItems)

                    ProductsView(items: ProductItemsData.productItems)

                    NewProductsView(items: NewProductItemsData.newProductsItems)
                        .border(.red)
                }
                .padding(.horizontal, 19)
            }
        }
    }
}

#Preview {
    ShopView()
}
