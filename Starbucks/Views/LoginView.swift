//
//  LoginView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/3/25.
//

import SwiftUI

struct LoginView: View {
    @State private var isLaunch: Bool = true
    
    var body: some View {
        if isLaunch {
            SplachView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.isLaunch = false
                    }
                }
        } else {
            // 전체 뷰 묶음
            VStack {
                // 상단 안내 뷰
                VStack(alignment: .leading) {
                    Image("starbucksLogo")
                        .resizable()
                        .frame(width: 97, height: 95)
                        .padding(.bottom, 28)
                    
                    Text("안녕하세요.\n스타벅스입니다.")
                        .font(.mainTextExtraBold)
                        .padding(.bottom, 19)
                    
                    Text("회원 서비스 이용을 위해 로그인 해주세요")
                        .font(.mainTextMedium16)
                        .foregroundStyle(Color.grayfont)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 104)
                .layoutPriority(1)
                
                Spacer()
                
                // 중앙
                VStack(alignment: .leading) {
                    Text("아이디")
                        .font(.mainTextRegular13)
                    Divider()
                        .padding(.bottom, 47)
                    
                    Text("비밀번호")
                        .font(.mainTextRegular13)
                    Divider()
                        .padding(.bottom, 47)
                    
                    Image("social")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: 46)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                // 하단
                VStack {
                    Text("이메일로 회원가입하기")
                        .font(.mainTextRegular12)
                        .foregroundStyle(Color.gray04)
                        .padding(.bottom, 19)
                    
                    Image("kakao")
                        .resizable()
//                        .scaledToFit()
                        .frame(maxWidth: 306, maxHeight: 45)
                        .padding(.bottom, 19)
                    
                    Image("apple")
                        .resizable()
//                        .scaledToFit()
                        .frame(maxWidth: 306, maxHeight: 45)
                    
                }
//                .padding(.bottom, 32)
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 19)

            
        }
        
    }
}

#Preview {
    LoginView()
}
