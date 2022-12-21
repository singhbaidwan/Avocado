//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Dalveer singh on 21/12/22.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe:Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal = false
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 12)
            {
                HStack{
                    Text(recipe.title)
                        .font(.system(.title2,design: .serif,weight: .bold))
                        .foregroundColor(Color("ColorGreenMedium"))
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "bookmark")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .imageScale(.small)
                        .foregroundColor(.yellow)
                }
                Text(recipe.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                RecipeRatingView(rating: recipe.rating)
                RecipeCookingInfoView(recipe: recipe)
            }
            .padding()
            .padding(.bottom,12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal.toggle()
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailView(recipe: recipe)
        }
    }
    
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
    }
}
