//
//  ProgressField.swift
//  Starbucks
//
//  Created by 이혜빈 on 8/3/25.
//


import SwiftUI

struct ProgressBarView: View {
    let percent: CGFloat
    let width: CGFloat
    
    var body: some View {
        let height: CGFloat = 12.0
        
        ZStack(alignment: .leading) {
            Capsule()
                .frame(width: width, height: height)
                .foregroundColor(Color("gray01"))
            
            Capsule()
                .frame(width: width * percent, height: height)
                .foregroundColor(Color("brown01"))
        }
    }
}

#Preview {
    ProgressBarView(percent: 0.45, width: 248)
}
