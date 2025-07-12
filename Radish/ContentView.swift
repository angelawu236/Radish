//
//  ContentView.swift
//  Radish
//
//  Created by Angela Wu on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Recipies")
                .font(.title)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .padding()
        .background(Color.myColor)
    }
}

#Preview {
    ContentView()
}
