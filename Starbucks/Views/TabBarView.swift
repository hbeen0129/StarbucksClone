//
//  TabBarView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

//
//  TabView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct TabBarView: View {
    // MARK: - 탭 식별을 위한 열거형
    enum Tab: String {
        case home = "Home"
        case pay = "Pay"
        case order = "Order"
        case shop = "Shop"
        case other = "Other"
    }

    // MARK: - 상태
    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    TabIcon(imageName: "home", title: "Home", isSelected: selectedTab == .home)
                }
                .tag(Tab.home)

            PayView()
                .tabItem {
                    TabIcon(imageName: "pay", title: "Pay", isSelected: selectedTab == .pay)
                }
                .tag(Tab.pay)

            OrderView()
                .tabItem {
                    TabIcon(imageName: "order", title: "Order", isSelected: selectedTab == .order)
                }
                .tag(Tab.order)

            ShopView()
                .tabItem {
                    TabIcon(imageName: "shop", title: "Shop", isSelected: selectedTab == .shop)
                }
                .tag(Tab.shop)

            OtherView()
                .tabItem {
                    TabIcon(imageName: "other", title: "Other", isSelected: selectedTab == .other)
                }
                .tag(Tab.other)
        }
    }
}

struct TabIcon: View {
    let imageName: String
    let title: String
    let isSelected: Bool

    var body: some View {
        VStack(spacing: 10) {
            Image(imageName)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 21)
                .tint(isSelected ? Color.green03 : Color.gray02)

            Text(title)
                .font(.caption)
                .foregroundColor(isSelected ? Color.green03 : Color.gray02)
        }
    }
}

#Preview {
    TabBarView()
}
