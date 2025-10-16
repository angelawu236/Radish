//
//  Card.swift
//  Radish
//
//  Created by Angela Wu on 7/12/25.
//

import SwiftUI
//want:
//loop through all "recipe" fields in User JSON (passed in) to get name and image.

struct cards: View {
    let userModel: User
    
    
    var body: some View {
       
        let recipeNameFont: SwiftUI.Font = .custom("Quicksand", size: 25).weight(.bold)
        VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 40){
                        ZStack(alignment: .bottomLeading){

                            AsyncImage(url: URL(string: userModel.recipes[0].pictures[0])) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 300, height: 230)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 230)
                                        .clipped()
                                case .failure:
                                    ZStack {
                                        Color.gray.opacity(0.15)
                                        Image(systemName: "photo")
                                            .imageScale(.large)
                                            .foregroundStyle(.secondary)
                                    }
                                    .frame(width: 300, height: 230)
                                @unknown default:
                                    Color.clear.frame(width: 300, height: 230)
                                }
                            }

                            Text(userModel.recipes[0].title)
                                .font(recipeNameFont)
                                .foregroundStyle(Color.textColor)
                                .lineLimit(2)
                                .frame(width: 200, alignment: .leading)
                                .padding(10)
                                .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
                                
                        }
                        .onAppear(){
                            print(userModel.recipes[0].pictures[0])

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
        let user = decode("User");
        cards(userModel: user)
    }
}
