//
//  MainButton.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/10/25.
//

import SwiftUI

struct MainButton: View {
    
    let action: () -> Void
    let text: String
    
    init(action: @escaping () -> Void, text: String) {
        self.action = action
        self.text = text
    }
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .font(.mainTextMedium18)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .frame(height: 58)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green01)
                }
        })
    }
}

#Preview {
    MainButton(action: {
        print("hello")
    }, text: "생성하기")
}
