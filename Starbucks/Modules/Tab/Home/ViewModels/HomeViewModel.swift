//
//  HomeViewModel.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/19/25.
//

import Foundation

class MenuViewModel: ObservableObject {
    // 전체 메뉴 데이터
    @Published var menuDetails: [MenuDetailItem] = [
        MenuDetailItem(
            imageName: "caramelCold",
            title: "아이스 카라멜 마끼아또",
            description: "향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 6100,
            temperature: .iced
        ),
        MenuDetailItem(
            imageName: "caramelHot",
            title: "카라멜 마끼아또",
            description: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 6100,
            temperature: .hot
        ),
        MenuDetailItem(
            imageName: "americanoCold",
            title: "아이스 카페 아메리카노",
            description: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
            price: 4700,
            temperature: .iced
        ),
        MenuDetailItem(
            imageName: "americanoHot",
            title: "카페 아메리카노",
            description: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
            price: 4700,
            temperature: .hot
        ),
        MenuDetailItem(
            imageName: "confana",
            title: "에스프레소 콘 파나",
            description: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
            price: 4100,
            temperature: .hot // HOT Only
        ),
        MenuDetailItem(
            imageName: "macchiato",
            title: "에스프레소 마끼아또",
            description: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
            price: 3900,
            temperature: .iced // Iced Only
        )
        
    ]
    
    // HOT 메뉴만 필터링
    var hotMenus: [MenuDetailItem] {
        menuDetails.filter { $0.temperature == .hot }
    }
    
    // ICED 메뉴만 필터링
    var icedMenus: [MenuDetailItem] {
        menuDetails.filter { $0.temperature == .iced }
    }
}
