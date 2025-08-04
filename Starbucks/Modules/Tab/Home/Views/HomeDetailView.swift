//
//  HomeDetailView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/20/25.
//

import SwiftUI

struct HomeDetailView: View {
    let item: MenuItem    // <-- 여기서 파라미터로 item을 받도록 선언

    var body: some View {
        VStack {
            Text(item.title)
            Image(item.imageName)
                .resizable()
                .scaledToFit()
            // 상세 페이지 레이아웃...
        }
        .navigationTitle(item.title)
    }
}


// 이게 아마 커피 디테일 뷰로 바뀔거임 일단 임시로 넣어놓음
