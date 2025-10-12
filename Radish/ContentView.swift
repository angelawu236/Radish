//
//  ContentView.swift
//  Radish
//
//  Created by Angela Wu on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("My Recipes")
                .font(Font.custom("Quicksand-Bold", size: 40))
                .foregroundStyle(Color.textColor)
            cards(imageUrl: "https://www.allrecipes.com/thmb/Z6yyEzdwZMg4RErga_vsbaw65HU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/83549-angelas-awesome-enchiladas-ddmfs-4x3-0894-dd127d7b2112467cbfc3f1a83c9beab3.jpg",
                  recipeName: "Angela's Enchiladas")
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
