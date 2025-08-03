//
//  HomeDetailView.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/20/25.
//

import SwiftUI

struct HomeDetailView: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            
            Text(item.title)
                .font(.title)
                .padding()
        }
        .navigationTitle("상세 메뉴")
    }
}


// 이게 아마 커피 디테일 뷰로 바뀔거임 일단 임시로 넣어놓음
