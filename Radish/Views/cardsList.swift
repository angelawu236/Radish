//
//  card.swift
//  Radish
//
//  Created by Angela Wu on 10/12/25.
//

import SwiftUI

struct cardsList: View {
    //need to loop over an image and string
    //when clicked, need to navigate to page of that recipe
    //so what is the data model here? 
    
    let userModel: User
    
    var body: some View {
        ScrollView( .horizontal){
            VStack( alignment: .leading, spacing: 10) {
                Text(userModel.recipes[0].category)
                    .font(Font.custom("Quicksand-Bold", size: 30))
                    .foregroundStyle(Color.titleColor)
                cards(userModel: userModel)
            }
        }
    }
}

//#Preview {
//    cardsList(categoryName: "Favorites")
//}

