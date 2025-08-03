//
//  HomeView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("name") var name: String = ""
    
    let menuItems: [MenuItem] = [
        MenuItem(imageName: "confanaCircle", title: "에스프레소 콘파나"),
        MenuItem(imageName: "macchiatoCircle", title: "에스프레소 마키아또"),
        MenuItem(imageName: "americanoIceCircle", title: "아이스 카페 아메리카노"),
        MenuItem(imageName: "americanoHotCircle", title: "카페 아메리카노"),
        MenuItem(imageName: "macchiatoIceCircle", title: "아이스 카라멜 마키아또"),
        MenuItem(imageName: "macchiatoHotCircle", title: "카라멜 마키아또")
        
    ]
    
    let campaignItem: [CampaignItem] = [
        CampaignItem(imageName: "disposableCup", title: "25년 3월 일회용컵 없는 날 캠페..", subtitle: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
        CampaignItem(imageName: "partners", title: "스타벅스 OOO점을 찾습니다", subtitle: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관을 응모합니다."),
        CampaignItem(imageName: "newCoffee", title: "2월 8일, 리저브 스프링 신규 커...", subtitle: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
    ]
    
    let dissertItem: [DissertItem] = [
        DissertItem(imageName: "croissants", title: "너티 크루아상"),
        DissertItem(imageName: "sausage", title: "매콤 소시지 불고기"),
        DissertItem(imageName: "pi", title: "미니 리프 파이"),
        DissertItem(imageName: "chocolat", title: "뺑 오 쇼콜라"),
        DissertItem(imageName: "sausagePi", title: "소시지&올리브 파이")
    ]
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ZStack(alignment: .topLeading) {
                        topBannerImage
                        VStack(alignment: .leading) {
                            topBannerText
                                .padding(.top, 106)
                                .padding(.horizontal, 28)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    sizeupBannerImgSection
                    
                    recommendMenu(name: name)
                    
                    recommendMenuList(items: menuItems)
                    
                    eventBannerImgSection
                    
                    serviceSuscibeImgSection
                    
                    campaignSection(items: campaignItem)
                    
                    mugImgSection
                    
                    onlineImgSection
                    
                    deliveryImgSection
                    
                    dissertSection(items: dissertItem)
                    
                    coldBrewImgSection
                    
                    mainImgSection
                    
                    makeBannerImgSection
                    
                }
                .safeAreaPadding(.horizontal, 10)
            }
        }
    }
}

private var topBannerImage: some View {
    Image(.homeTop)
        .resizable()
        .frame(height: 226)
        .frame(maxWidth: .infinity)
}

private var topBannerText: some View {
    VStack{
        Text("골든 미모사 그린 티와 함께 \n행복한 새해의 축배를 들어요!")
            .font(.mainTextBold24)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        
        HStack {
            VStack(alignment: .leading) {
                Text("11★ until next Reward")
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(.brown02)
                    .multilineTextAlignment(.leading)
                ProgressBarView(percent: 0.45, width: 248)
            }
            
            Spacer()
            
            VStack {
                HStack {
                    Text("내용 보기")
                        .font(.mainTextRegular13)
                    Image(.goRight)
                }
                HStack {
                    Text("1")
                        .font(.mainTextSemiBold38)
                    + Text("/")
                        .font(.mainTextLight14)
                        .foregroundStyle(.gray02)
                    + Text("12★")
                        .font(.mainTextSemiBold24)
                        .foregroundStyle(.brown02)
                    
                }
                
            }
            
        }
        
    }
}

private var sizeupBannerImgSection: some View {
    Image(.firstBanner)
    
}

private func recommendMenu(name: String) -> some View {
    VStack {
        (
            Text(name.isEmpty ? "(작성한 닉네임)" : name)
                .font(.mainTextBold24)
                .foregroundStyle(.brown01)
            + Text("님을 위한 추천 메뉴")
                .font(.mainTextBold24)
                .foregroundStyle(.black03)
        )
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .padding(.horizontal, 10)
    
    
}

private func recommendMenuList(items: [MenuItem]) -> some View {
    let rows = [GridItem(.fixed(130))]
    
    return ScrollView(.horizontal, showsIndicators: false) {
        LazyHGrid(rows: rows, spacing: 16) {
            ForEach(items) { item in
                NavigationLink(destination: HomeDetailView(item: item)) {
                    VStack(spacing: 10) {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 130, height: 130)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                        Text(item.title)
                            .font(.caption)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 140)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(.horizontal, 10)
        .frame(height: 180)
    }
}

private var eventBannerImgSection: some View {
    Image(.secondBanner)
}

private var serviceSuscibeImgSection: some View {
    Image(.thirdBanner)
}

private func campaignSection(items: [CampaignItem]) -> some View  {
    VStack(alignment: .leading, spacing: 10) {
        Text("What's New")
            .font(.mainTextBold24)
            .foregroundStyle(.black03)
            .padding(.horizontal, 10)
        
        ScrollView(.horizontal, showsIndicators: false) {
            let rows = [GridItem(.fixed(160))]
            
            LazyHGrid(rows: rows, spacing: 16) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: 10) {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 242, height: 160)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                        Text(item.title)
                            .font(.mainTextSemiBold18)
                            .foregroundStyle(.black02)
                        
                        Text(item.subtitle)
                            .font(.mainTextSemiBold13)
                            .foregroundStyle(.gray03)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .frame(width: 249)
                }
            }
            .padding(.horizontal, 10)
            .frame(height: 250)
        }
    }
}

private var mugImgSection: some View {
    Image(.fourthBanner)
}

private var onlineImgSection: some View {
    Image(.fifthBanner)
}

private var deliveryImgSection: some View {
    Image(.sixthBanner)
}

private func dissertSection(items: [DissertItem]) -> some View {
    VStack(alignment: .leading, spacing: 16) {
        Text("하루가 달콤해지는 디저트")
            .font(.mainTextBold24)
            .foregroundStyle(.black03)
            .padding(.horizontal, 10)
        
        ScrollView(.horizontal, showsIndicators: false) {
            let rows = [GridItem(.fixed(130))]
            
            LazyHGrid(rows: rows, spacing: 16) {
                ForEach(items) { item in
                    VStack(spacing: 10) {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 130, height: 130)
                        
                        Text(item.title)
                            .font(.caption)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 130)
                }
            }
            .padding(.horizontal, 10)
            .frame(height: 200)
        }
    }
}

private var coldBrewImgSection: some View {
    Image(.seventhBanner)
}

private var mainImgSection: some View {
    Image(.eighthBanner)
}

private var makeBannerImgSection: some View {
    Image(.ninthBanner)
}

#Preview {
    HomeView()
}
