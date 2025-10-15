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
        VStack (alignment: .leading){
            Text("My Recipes")
                .font(Font.custom("Quicksand-Bold", size: 40))
                .foregroundStyle(Color.textColor)

            cardsList(userModel: user)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .padding()
        .background(Color.bgColor)
    }
}

#Preview {
    ContentView()
}
