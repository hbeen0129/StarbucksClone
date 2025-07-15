//
//  PopupView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/10/25.
//

import SwiftUI

struct PopupView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            PopImage
            
            Spacer()
            
            VStack(spacing: 19) {
                DetailButton
                    .border(Color.red)
                
                CloseButton
                    .border(Color.red)
                    
            }
            .safeAreaPadding(.horizontal, 19)
            
        }
    }
    
    // MARK: 광고 이미지
    private var PopImage: some View {
        Image(.popup)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 720)
            .ignoresSafeArea(.container, edges: .top)
            
    }
    
    
    // MARK: 자세히 보기 버튼
    private var DetailButton: some View {
        MainButton(action: {
            print("자세히 보기")
        }, text: "자세히 보기")
    }
    
    // MARK: 닫기 버튼
    private var CloseButton: some View {
        HStack {
            Spacer() // 왼쪽 공간 밀기
            Button("X 닫기") {
                dismiss()
            }
            .font(.mainTextLight14)
            .foregroundStyle(.gray05)
            .padding(.trailing, 20)
            
        }
        
    }
}
    
    
    #Preview {
        PopupView()
    }

