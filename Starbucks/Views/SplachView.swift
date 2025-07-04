//
//  SplachView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/3/25.
//

import SwiftUI

struct SplachView: View {
    var body: some View {
        ZStack {
            Color.maingreen.ignoresSafeArea()
            Image("starbucksLogo")
                .resizable()
                .frame(width: 168, height: 168, alignment: .center)
        }
    }
}

#Preview {
    SplachView()
}
