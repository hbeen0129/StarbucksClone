//
//  Fonts.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/3/25.
//

import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case extraBold
        case bold
        case semibold
        case medium
        case regular
        case light
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Regular"
            case .light:
                return "Pretendard-Light"
            }
        }
    }
    
    static func pretend(type: Pretend, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    static var mainTextExtraBold: Font {
        return .pretend(type: .extraBold, size: 24)
    }
    
    // Bold
    static var mainTextBold24: Font {
        return .pretend(type: .bold, size: 24)
    }
    
    static var mainTextBold22: Font {
        return .pretend(type: .bold, size: 22)
    }
    
    static var mainTextBold16: Font {
        return .pretend(type: .semibold, size: 16)
    }
    
    // SemiBold
    static var mainTextSemiBold38: Font {
        return .pretend(type: .semibold, size: 38)
    }
    
    static var mainTextSemiBold24: Font {
        return .pretend(type: .semibold, size: 24)
    }
    
    static var mainTextSemiBold18: Font {
        return .pretend(type: .semibold, size: 18)
    }
    
    static var mainTextSemiBold16: Font {
        return .pretend(type: .semibold, size: 16)
    }
    
    static var mainTextSemiBold14: Font {
        return .pretend(type: .semibold, size: 14)
    }
    
    static var mainTextSemiBold13: Font {
        return .pretend(type: .semibold, size: 13)
    }
    
    static var mainTextSemiBold12: Font {
        return .pretend(type: .semibold, size: 12)
    }
    
    // Regular
    static var mainTextRegular18: Font {
        return .pretend(type: .regular, size: 18)
    }
    
    static var mainTextRegular13: Font {
        return .pretend(type: .regular, size: 13)
    }
    
    static var mainTextRegular12: Font {
        return .pretend(type: .regular, size: 12)
    }
    
    static var mainTextRegular9: Font {
        return .pretend(type: .regular, size: 9)
    }
    
    // Medium
    static var mainTextMedium18: Font {
        return .pretend(type: .medium, size: 18)
    }
    
    static var mainTextMedium16: Font {
        return .pretend(type: .medium, size: 16)
    }
    
    static var mainTextMedium13: Font {
        return .pretend(type: .medium, size: 13)
    }
    
    static var mainTextMedium10: Font {
        return .pretend(type: .medium, size: 10)
    }
    
    static var mainTextMedium8: Font {
        return .pretend(type: .medium, size: 8)
    }
    
    static var mainTextLight14: Font {
        return .pretend(type: .medium, size: 14)
    }
    
}
