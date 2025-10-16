//
//  ContentView.swift
//  Radish
//
//  Created by Angela Wu on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    let user = decode("User");
    
    var body: some View {
        bottomTab(user: user)
    }
}

#Preview {
    ContentView()
}
