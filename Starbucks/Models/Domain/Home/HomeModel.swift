//
//  HomeModel.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/20/25.
//

import Foundation
import SwiftUI

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

// MARK: 메뉴 아이템
let menuItems: [MenuItem] = [
    MenuItem(imageName: "espressoCon", title: "에스프레소 콘파나"),
    MenuItem(imageName: "espressoM", title: "에스프레소 마키아또"),
    MenuItem(imageName: "iceAm", title: "아이스 카페 아메리카노"),
    MenuItem(imageName: "hotAm", title: "카페 아메리카노"),
    MenuItem(imageName: "iceCaramel", title: "아이스 카라멜 마키아또"),
    MenuItem(imageName: "caramel", title: "카라멜 마키아또")
]

// MARK: 캠페인 아이템
let campaignItem: [CampaignItem] = [
    CampaignItem(imageName: "campaign", title: "25년 3월 일회용컵 없는 날 캠페..", subtitle: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
    CampaignItem(imageName: "community", title: "스타벅스 OOO점을 찾습니다", subtitle: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관을 응모합니다."),
    CampaignItem(imageName: "newCoffee", title: "2월 8일, 리저브 스프링 신규 커...", subtitle: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
]

// MARK: 디저트 아이템
let dissertItem: [DissertItem] = [
    DissertItem(imageName: "croissant", title: "너티 크루아상"),
    DissertItem(imageName: "spicy", title: "매콤 소시지 불고기"),
    DissertItem(imageName: "miniPie", title: "미니 리프 파이"),
    DissertItem(imageName: "chocolat", title: "뺑 오 쇼콜라"),
    DissertItem(imageName: "olive", title: "소시지&올리브 파이")
]

// MARK: 온도 타입 (HOT / ICED)
enum DrinkTemperature: String, Codable, CaseIterable {
    case hot = "HOT"
    case iced = "ICED"
}


// MARK: HomeDetailView 커피 화면 모델

struct MenuDetailItem: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let price: Int
    let temperature: DrinkTemperature
}

