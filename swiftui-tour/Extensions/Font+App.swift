//
//  Font+App.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

extension Font {
    static func app(of size: Double) -> Font {
        custom(Constants.fontName, size: size)
    }
    static func appFontSize(for style: TextStyle) -> Double {
        switch style {
        case .largeTitle:
            return 32
        case .title:
            return 26
        case .title2:
            return 24
        case .title3:
            return 22
        case .headline:
            return 20
        case .subheadline:
            return 18
        case .body:
            return 16
        case .callout:
            return 14
        case .footnote:
            return 12.5
        case .caption:
            return 12
        case .caption2:
            return 11
        @unknown default:
            return 17
        }
    }
}

extension Font {
    static func app(_ style: TextStyle) -> Font {
        app(of: appFontSize(for: style))
    }
}

extension Font.TextStyle {
    var title: String {
        switch self {
        case .largeTitle:
            return "largeTitle"
        case .title:
            return "title"
        case .title2:
            return "title2"
        case .title3:
            return "title3"
        case .headline:
            return "headline"
        case .subheadline:
            return "subheadline"
        case .body:
            return "body"
        case .callout:
            return "callout"
        case .footnote:
            return "footnote"
        case .caption:
            return "caption"
        case .caption2:
            return "caption2"
        @unknown default:
            return "Unknown(\(hashValue))"
        }
    }
}
