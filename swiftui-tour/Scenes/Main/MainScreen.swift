//
//  MainScreen.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import SwiftUI

struct MainScreen: View {
    private enum TabIndex: Int, CaseIterable {
        case home, account, service
    }
    @State private var selected: TabIndex = .home
    var body: some View {
        TabView(selection: $selected) {
            homeSection
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(TabIndex.home)
            
            accountSection
                .tabItem {
                    Label("Accounts", systemImage: "person.text.rectangle")
                }
                .tag(TabIndex.account)
            
            serviceSection
                .tabItem {
                    Label("Services", systemImage: "figure.wave.circle")
                }
                .tag(TabIndex.service)
        }
    }
    
    var homeSection: some View {
        HomeScreen()
    }
    
    var accountSection: some View {
        AccountScreen()
    }
    
    var serviceSection: some View {
        ServiceScreen()
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
