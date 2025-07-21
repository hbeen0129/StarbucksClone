//
//  HomeView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("name") var name: String = ""

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
    Image(.topImg)
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
                Image(.gauge)
            }
            
            Spacer()
            
            VStack {
                HStack {
                    Text("내용 보기")
                        .font(.mainTextRegular13)
                    Image(.goline)
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
    Image(.sizeupBanner)
    
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
    Image(.eventBanner)
}

private var serviceSuscibeImgSection: some View {
    Image(.serviceSuscibe)
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
    Image(.mug)
}

private var onlineImgSection: some View {
    Image(.online)
}

private var deliveryImgSection: some View {
    Image(.delivery)
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
    Image(.coldBrew)
}

private var mainImgSection: some View {
    Image(.mainDrinkBanner)
}

private var makeBannerImgSection: some View {
    Image(.makeBanner)
}

#Preview {
    HomeView()
}
