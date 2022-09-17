//
//  HomeScreen.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    header
                    
                    NavigationLink {
                        FontSampleScreen()
                    } label: {
                        Text("Sample Font Size")
                            .font(.app(.title2))
                    }

                    
                    ForEach(0...100, id: \.self) { index in
                        Text("Item #\(index)")
                    }
                }
                .padding(.horizontal)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "house")
                        .foregroundColor(.secondary)
                }
            }
        }
    }
    
    var header: some View {
        Text("Welcome, John!")
            .font(.app(.largeTitle))
            .padding(.vertical, 15)
    }
    
    var sample: some View {
        Group {
            ForEach(Font.TextStyle.allCases, id: \.self) { style in
                HStack {
                    Text(style.title)
                        .defaultStyle(style)
                    Spacer()
                    Text(style.title)
                        .app(style)
                        
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
