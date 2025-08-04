//
//  NewProductsView.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import SwiftUI

struct NewProductsView: View {
    let items: [NewProductsItem]
    
    // 2열 구성
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 65), // 가로 간격
        GridItem(.flexible(), spacing: 65)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("New Products")
                .font(.mainTextSemiBold22)
                .foregroundStyle(.black03)
            
            LazyVGrid(columns: columns, alignment: .leading ,spacing: 30) { // 세로 간격
                ForEach(items) { item in
                    VStack(spacing: 12) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                        
                        Text(item.name)
                            .font(.mainTextSemiBold14)
                            .foregroundStyle(.black02)
                            .frame(maxWidth: .infinity, alignment: .leading)

                    }
                }
            }
        }
    }
}
