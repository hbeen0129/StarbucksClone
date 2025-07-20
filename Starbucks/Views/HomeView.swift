//
//  HomeView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("name") var name: String = ""
    
    let items: [MenuItem] = [
            MenuItem(imageName: "espressoCon", title: "에스프레소 콘파나"),
            MenuItem(imageName: "espressoM", title: "에스프레소 마키아또"),
            MenuItem(imageName: "iceAm", title: "아이스 카페 아메리카노"),
            MenuItem(imageName: "hotAm", title: "카페 아메리카노"),
            MenuItem(imageName: "iceCaramel", title: "아이스 카라멜 마키아또"),
            MenuItem(imageName: "caramel", title: "카라멜 마키아또")
           
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
                    
                    sizeupBannerImg
                    
                    recommendMenu(name: name)
                    
                    recommendMenuList(items: items)
                    
                    eventBannerImg


                    
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

private var sizeupBannerImg: some View {
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
                            .frame(width: 120, height: 120)
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

private var eventBannerImg: some View {
    Image(.eventBanner)
}


#Preview {
    HomeView()
}
