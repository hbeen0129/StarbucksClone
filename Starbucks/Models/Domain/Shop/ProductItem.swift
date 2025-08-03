//
//  ProductItem.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import Foundation
import SwiftUI

struct ProductItem: Identifiable {
    let id: UUID = .init()
    let image: ImageResource
    let name: String
}

struct ProductItemsData {
    static let productItems: [ProductItem] = [
        .init(image: .productFirst, name: "텀블러"),
        .init(image: .productSecond, name: "커피 용품"),
        .init(image: .productThird, name: "선물세트"),
        .init(image: .productFourth, name: "보온병"),
        .init(image: .productFifth, name: "머그/컵"),
        .init(image: .productSixth, name: "라이프스타일")
    ]
}
