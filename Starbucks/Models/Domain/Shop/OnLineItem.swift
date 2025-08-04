//
//  OnLineItem.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import Foundation
import SwiftUI

struct OnLineItem: Identifiable {
    let id: UUID = .init()
    let image: ImageResource
}

struct OnLineItemsData {
    static let onLineItems: [OnLineItem] = [
        .init(image: .shopFirst),
        .init(image: .shopSecond),
        .init(image: .shopThird)
    ]
}
