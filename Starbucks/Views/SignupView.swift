//
//  SingupView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/10/25.
//

// 회원가입 뷰
import SwiftUI

struct SignupView: View {
    @State private var viewModel = SignupViewModel()
    @AppStorage("savedName") private var savedName: String = ""
    @AppStorage("savedEmail") private var savedEmail: String = ""
    @AppStorage("savedPassword") private var savedPassword: String = ""
    
    
    var body: some View {
        VStack {
//            Spacer()
            
            SignupTextField
            
            Spacer()
            
            SignupButton
        }
        .safeAreaPadding(.horizontal, 19)
        .safeAreaPadding(.top, 172)  // 안전영역 기준으로 172만큼 떨어진다. (안전영역이 위에서부터 172 늘어난거임)
        .safeAreaPadding(.bottom, 72)
    }
    
    // MARK: 정보 입력 텍스트 필드
    private var SignupTextField: some View {
        VStack(spacing: 49) {
            makeTextField(name: "닉네임", text: $viewModel.user.name)
            makeTextField(name: "이메일", text: $viewModel.user.email)
            makeTextField(name: "비밀번호", text: $viewModel.user.ePwd)
        }
    }
    
    // MARK: 생성하기 버튼
    private var SignupButton: some View {
        MainButton(action: {
            savedName = viewModel.user.name
            savedEmail = viewModel.user.email
            savedPassword = viewModel.user.ePwd
        }, text: "생성하기")
    }
    
    // MARK: 텍스트 필드 커스텀으로 불러와서 뷰에 적용시키기
    private func makeTextField(name: String, text: Binding<String>) -> some View {
        VStack {
            TextField("", text: text, prompt: placeholderText(text: name))
                .textFieldStyle(.plain)
                .font(.mainTextBold24)
                .foregroundStyle(Color.black)
            
            
            /*
             (타이틀 키 + 텍스트) : 타이틀 키 -> placeholder 자동으로 설정(폰트 색깔 꾸미기 불가능)
             
             (타이틀 키 + 텍스트 + 프롬프트) : 타이틀 키 -> Voice over 음성 안내 기능으로 자동 설정, 프롬프트 -> placeholder(직접 꾸미기 가능)
             */
            
            Divider()
                .frame(maxWidth: .infinity)
                .frame(height: 1)
                .foregroundStyle(Color.gray00)
        }
    }
    
    // MARK: 텍스트 필드 위의 텍스트 꾸미기
    private func placeholderText(text: String) -> Text {
        Text(text)
            .font(.mainTextRegular18)
            .foregroundStyle(.gray02)
    }
}

#Preview {
    SignupView()
}



