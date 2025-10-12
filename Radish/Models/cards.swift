//
//  Card.swift
//  Radish
//
//  Created by Angela Wu on 7/12/25.
//

import SwiftUI

struct cards: View {
    let imageUrl: String
    let recipeName: String
    
    var body: some View {
        let recipeNameFont: SwiftUI.Font = .custom("Quicksand", size: 25).weight(.bold)
        VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 40){
                        ZStack(alignment: .bottomLeading){
                            AsyncImage(url: URL(string: imageUrl)){ image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300)
                            }placeholder: {
                                ProgressView()
                            }
                            Text(recipeName)
                                .font(recipeNameFont)
                                .foregroundStyle(Color.textColor)
                                .lineLimit(2)
                                .frame(width: 200, alignment: .leading)
                                .padding(10)
                                .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
                                
                        }
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.themeColor, lineWidth: 8)
                                
                            )
                        
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                }
        }
    }
}

struct cards_Previews: PreviewProvider {
    static var previews: some View {
        cards(imageUrl: "https://www.allrecipes.com/thmb/Z6yyEzdwZMg4RErga_vsbaw65HU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/83549-angelas-awesome-enchiladas-ddmfs-4x3-0894-dd127d7b2112467cbfc3f1a83c9beab3.jpg",
              recipeName: "Angela's Enchiladas")
    }
}
