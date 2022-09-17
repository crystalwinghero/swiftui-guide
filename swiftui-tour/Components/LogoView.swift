//
//  LogoView.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

struct LogoView: View {
    var color: Color = .indigo
    var scale: Double = 1.0
    
    var body: some View {
        HStack(spacing: 5 / scale) {
            Image(systemName: "network")
                .foregroundColor(color)
            Text("SWB")
                .font(
                    .custom(
                        Constants.logoFont, size: 22.0
                    )
                )
                .fontWeight(.semibold)
                .foregroundColor(color)
        }
        .scaleEffect(scale)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 40) {
            Spacer()
            LogoView()
            LogoView(color: .red)
            LogoView(color: .orange, scale: 2.0)
            LogoView(color: .accentColor, scale: 4.0)
            Spacer()
        }
    }
}
