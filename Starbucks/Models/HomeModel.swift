//
//  HomeModel.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/20/25.
//

import Foundation

// MARK: 커피 메뉴 그리드
struct MenuItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

// MARK: 캠페인 그리드
struct CampaignItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String 
}

// MARK: 디저트 그리드
struct DissertItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}
