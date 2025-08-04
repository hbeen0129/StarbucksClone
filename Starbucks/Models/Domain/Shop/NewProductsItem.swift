//t//  NewProductsItem.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import Foundation
import SwiftUI

struct NewProductsItem: Identifiable {
    let id: UUID = .init()
    var image: ImageResource
    var name: String
}

struct NewProductItemsData {
    static let newProductsItems: [NewProductsItem] = [
        .init(image: .newFirst, name: "그린 사이렌 도트 머그 237ml"),
        .init(image: .newSecond, name: "그린 사이렌 도트 머그 355ml"),
        .init(image: .newThird, name: "홈 카페 미니 머그 세트"),
        .init(image: .newFourth, name: "홈 카페 글라스 세트")
    ]
}
