//
//  FontSampleScreen.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

struct FontSampleScreen: View {
    
    struct FontCell: View {
        let style: Font.TextStyle
        
        var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Default:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(style.title)
                        .defaultStyle(style)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Custom:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(style.title)
                        .app(style)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
    
    @State private var custom: Double = 20
    var body: some View {
        List {
            sample
        }
        .listStyle(.grouped)
        .navigationTitle("Sample Font in SwiftUI")
    }
    
    var sample: some View {
        Group {
            ForEach(Font.TextStyle.allCases, id: \.self) { style in
                FontCell(style: style)
                    .frame(minHeight: 60)
            }
        }
    }
}

struct FontSampleScreen_Previews: PreviewProvider {
    static var previews: some View {
        FontSampleScreen()
    }
}
