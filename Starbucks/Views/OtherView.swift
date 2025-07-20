//
//  OtherView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/15/25.
//

import SwiftUI

/// Other 뷰
struct OtherView: View {
    
    // MARK: - Properties
    @AppStorage("name") var name: String = ""
    
    // MARK: - body
    var body: some View {
        VStack {
            topGroup
            
            bottomGroup
        }
    }
    
    // MARK: - topGroup
    private var topGroup: some View {
        HStack {
            Text("Other")
                .font(.mainTextBold24)
                .foregroundStyle(.black)
            
            Spacer()
            
            Button {
                print("로그아웃")
            } label: {
                Image("logOut")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
        }
        .padding(.top, 28)
        .padding(.bottom, 16)
        .padding(.horizontal, 24)
    }
    
    // MARK: - bottomGroup
    private var bottomGroup: some View {
        ZStack {
            Color.white01
            
            VStack {
                mainSection
                
                Spacer()
                
                paySection
                
                Spacer()
                
                customerSupportSection
                Spacer()
            }
            .padding(.top, 41)
            .padding(.bottom, 41)
        }
    }
    
    private var mainSection: some View {
        VStack(spacing: 24) {
            VStack(spacing: 5) {
                Text(name == "" ? "(작성한 닉네임)" : name)
                    .font(.mainTextSemiBold24)
                    .foregroundStyle(.green01)
                + Text(" 님")
                    .font(.mainTextSemiBold24)
                    .foregroundStyle(.black02)
                HStack(spacing: 4) {
                    Text("환영합니다!")
                        .font(.mainTextSemiBold24)
                        .foregroundStyle(.black02)
                    Image("handsUp")
                        .resizable()
                        .frame(width: 24, height: 21)
                }
            }
            
            HStack(spacing: 11) {
                MenuButton(text: "별 히스토리", image: "star")
                MenuButton(text: "전자영수증", image: "receipt")
                MenuButton(text: "나만의 메뉴", image: "my")
            }
            
            
        }
    }
    
    private var paySection: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Pay")
                .font(.mainTextSemiBold18)
                .foregroundStyle(.black)
            
            payBottomSection
        }
        .padding(.horizontal, 10)
    }
    
    // MARK: pay 부분 버튼
    private var payBottomSection: some View {
        VStack {
            HStack {
                MiniMenuButton(text: "스타벅스 카드 등록", image: "card")
                
                Spacer()
                
                MiniMenuButton(text: "카드 교환권 등록", image: "card_change")
            }
            
            HStack {
                MiniMenuButton(text: "쿠폰 등록", image: "coupon")
                
                Spacer()
                
                MiniMenuButton(text: "쿠폰 히스토리", image: "conpon_history")
            }
        }
    }
    
    private var customerSupportSection: some View {
        VStack(alignment: .leading) {
            Text("고객지원")
                .font(.mainTextSemiBold18)
                .foregroundStyle(.black)
            
            customerSupportBottomSection
        }
        .padding(.horizontal, 10)
    }
    
    private var customerSupportBottomSection: some View {
        VStack {
            HStack {
                MiniMenuButton(text: "스토어 케어", image: "store_care")
                
                Spacer()
                
                MiniMenuButton(text: "고객의 소리", image: "customer")
            }
            
            HStack {
                MiniMenuButton(text: "매장 정보", image: "store_info")
                
                Spacer()
                
                MiniMenuButton(text: "반납기 정보", image: "return_info")
            }
            
            HStack {
                MiniMenuButton(text: "마이 스타벅스 리뷰", image: "my_review")
                
                Spacer()
            }
        }
    }

}

fileprivate struct MenuButton: View {
    var text: String
    var image: String
    
    var body: some View {
        Button {
            print(text)
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.white)
                
                VStack(spacing: 4) {
                    Image(image)
                        .resizable()
                        .frame(width: 48, height: 48)
                    Text(text)
                        .font(.mainTextSemiBold16)
                        .foregroundStyle(.black03)
                }
            }
            .frame(width: 102, height: 108)
        }
    }
}

fileprivate struct MiniMenuButton: View {
    var text: String
    var image: String
    
    var body: some View {
        Button {
            print(text)
        } label: {
            HStack(spacing: 4) {
                Image(image)
                    .resizable()
                    .frame(width: 32, height: 32)
                Text(text)
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(.black02)
                    .lineLimit(1)
                Spacer()
            }
            // TODO: - 임의로 값 설정함 (스타벅스 카드 등록이 밀려서)
            .frame(width: 170)
        }

    }
}

#Preview {
    OtherView()
}
