//
//  bottomTab.swift
//  Radish
//
//  Created by Angela Wu on 10/15/25.
//

import SwiftUI

enum Tab: Hashable {
    case home, profile
}

struct bottomTab: View {
    @State private var selected: Tab = .home
    let user: User
        
        var body: some View {
            TabView(selection: $selected) {
                Home(user: user)
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                    .tag(Tab.home)
                
                Profile(user: user)
                    .tabItem{
                        Image(systemName: "person.fill")
                    }
                    .tag(Tab.profile)
                
        }
    }
}
