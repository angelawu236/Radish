//
//  Home.swift
//  Radish
//
//  Created by Angela Wu on 10/15/25.
//

import SwiftUI

struct Home: View {
    
    let user: User
    
    var body: some View {
        NavigationView{
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
}
