//
//  ShopView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ScrollView {
            OnLineSection(item: OnLineItemsData.onLineItems)
        }
    }
}

private func OnLineSection(item: [OnLineItem]) -> some View {
    VStack(alignment: .leading, spacing: 16) {
        Text("Starbucks Online Store")
            .font(.mainTextBold24)
            .foregroundStyle(.black01)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 28) { // 이미지 간 간격 28
                ForEach(item) { element in
                    Image(element.image)
                        .resizable()
                        .scaledToFit()
//                        .frame(width: 160, height: 160) // 원하는 사이즈 조절
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
    }
}


#Preview {
    ShopView()
}
