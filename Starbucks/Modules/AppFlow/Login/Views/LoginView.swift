//
//  LoginView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/3/25.
//

import SwiftUI

/// 로그인 화면 View
struct LoginView: View {
    @State private var user = User(id: "", pwd: "")
    @FocusState private var isIDFocused: Bool // 아이디 누르면 포커스
    @FocusState private var isPwdFocused: Bool // 비밀번호 누르면 포커스
    
    // MARK: - body
    
    var body: some View {
        NavigationStack {
            VStack() {
                
                Spacer()
                
                titleGroup
                
                Spacer()
                
                idGroup
                
                Spacer()
                
                loginGroup
                
            }
            // 전체 가로 패딩 아래 패딩
            .safeAreaPadding(.horizontal, 19)
            .safeAreaPadding(.bottom, 63)
            
        }
        
    }
    
    // MARK: - titleGroup(상단 제목)
    
    private var titleGroup: some View {
        VStack(alignment: .leading, spacing: 28) {
            
            logoImage
                
            titleText
            
        }
    }
    
    // MARK: 스타벅스 로고 이미지
    private var logoImage: some View {
        HStack {
            Image(.logo)
                .resizable()
                .frame(width: 97, height: 95)
            
            Spacer()
        }
    }
    
    private var titleText: some View {
        VStack(alignment: .leading, spacing: 19) {
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.mainTextExtraBold)
            Text("회원 서비스 이용을 위해 로그인 해주세요.")
                .font(.mainTextMedium16)
                .foregroundStyle(.gray01)
        }
    }
    
    // MARK: - idGroup(아이디, 비밀번호 입력 부분)
    
    private var idGroup: some View {
        VStack(spacing: 47) {
            
            idTextField
            
            passwordTextField
            
            loginButton
            
        }
    }
    
    private var idTextField: some View {
        VStack(alignment: .leading, spacing: 4) {
            TextField("아이디", text: $user.id)
                .focused($isIDFocused) // 아이디 포커스 상태 연결
                .textFieldStyle(.plain)
            Divider()
                .frame(maxWidth: .infinity, minHeight: 0.7, maxHeight: 0.7)
                .foregroundStyle(isIDFocused ? Color.green01 : Color.gray00) // 기본 그레이 눌렀을 때 그린
                .animation(.easeInOut(duration: 0.2), value: isIDFocused)
                
        }
        
    }
    
    private var passwordTextField: some View {
        VStack(alignment: .leading, spacing: 4) {
            TextField("비밀번호", text: $user.pwd)
                .focused($isPwdFocused) // 비밀번호 포커스 상태 연결
                .textFieldStyle(.plain)
            Divider()
                .frame(maxWidth: .infinity, minHeight: 0.7, maxHeight: 0.7)
                .foregroundStyle(isPwdFocused ? Color.green01 : Color.gray00) // 기본 그레이 눌렀을 때 그린
                .animation(.easeInOut(duration: 0.2), value: isPwdFocused)
        }
    }
    
    private var loginButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.green01)
                .frame(height: 46)
                .frame(maxWidth: .infinity)
                
            Text("로그인하기")
                .font(.mainTextMedium16)
                .foregroundStyle(.white)
        }
    }
    
    // MARK: - loginGorup(소셜 로그인 부분)
    
    private var loginGroup: some View {
        VStack(spacing: 19) {
            
            emailSignUpButton
            
            kakaoLogin
            
            appleLogin
        }
    }
    
    private var emailSignUpButton: some View {
        NavigationLink(destination: SignupView()) {
            Text("이메일로 회원가입하기")
                .font(.mainTextRegular12)
                .foregroundStyle(.gray04)
                .underline()
        }
        
    }
    
    private var kakaoLogin: some View {
        Image(.kakao)
            .resizable()
            .frame(width: 306, height: 45)
    }
    
    private var appleLogin: some View {
        Image(.apple)
            .resizable()
            .frame(width: 306, height: 45)
    }
}

#Preview {
    LoginView()
}
