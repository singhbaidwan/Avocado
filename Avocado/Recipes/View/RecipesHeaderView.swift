//
//  RecipesHeaderView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct RecipesHeaderView: View {
    
    private var idiom:UIUserInterfaceIdiom{UIDevice.current.userInterfaceIdiom}
    
    var recipeHeader:RecipesHeader
    private var slideInAnimation:Animation{
        .spring(response: 1.5,dampingFraction: 0.5,blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    }
    var body: some View {
        ZStack(alignment:.leading){
            Image(recipeHeader.image)
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading,spacing: 0) {
                Spacer()
                    .frame(height: 150)
                
                HStack(alignment:.center,spacing: 0){
                    Spacer()
                        .frame(width: 30)
                    HStack(alignment: .top,spacing: 0) {
                        
                        Rectangle()
                            .fill(Color("ColorGreenLight"))
                            .frame(width: 4)
                        VStack(alignment: .leading,spacing: 6) {
                            Text(recipeHeader.headline)
                                .font(.title)
                                .fontDesign(.serif)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .shadow(radius: 3)
                            Text(recipeHeader.subheadline)
                                .font(.body)
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                                .shadow(radius: 3)
                                .foregroundColor(.white)
                        }
                        .frame(width: 281,height: 105)
                        .padding(.horizontal,12)
                        .background(Color("ColorBlackTransparentLight"))
                        
                    }
                    .frame(height: 105)
                    .animation(slideInAnimation, value: UUID())
                }
                Spacer()
            }
        }
    }
}

struct RecipesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesHeaderView(recipeHeader: recipesHeaders[1])
            .previewLayout(.sizeThatFits)
    }
}
