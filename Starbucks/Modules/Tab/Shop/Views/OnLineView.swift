//
//  OnLineView.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/4/25.
//

import SwiftUI

struct OnLineView: View {
    let item: [OnLineItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Starbucks Online Store")
                .font(.mainTextBold24)
                .foregroundStyle(.black03)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 28) {
                    ForEach(item) { element in
                        Image(element.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
    }
}
