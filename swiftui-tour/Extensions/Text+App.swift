//
//  Text+App.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

extension Text {
    func defaultStyle(_ style: Font.TextStyle) -> Text {
        self.font(.system(style))
    }
    func app(_ style: Font.TextStyle) -> Text {
        self.font(.app(style))
    }
}
