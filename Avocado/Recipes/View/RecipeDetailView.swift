//
//  RecipeDetailView.swift
//  Avocado
//
//  Created by Dalveer singh on 21/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(.vertical,showsIndicators: false)
        {
            VStack{
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    Text(recipe.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .multilineTextAlignment(.center)
                        .padding(.top,10)
                    
                    RecipeRatingView(rating: recipe.rating)
                    RecipeCookingInfoView(recipe: recipe)
                    
                    Text("Ingredients")
                        .modifier(RecipeSectionTitleModifier())
                    
                    LazyVStack(alignment:.leading,spacing: 10){
                        ForEach(recipe.ingredients,id:\.self){
                            item in
                            VStack(alignment: .leading, spacing: 8) {
                                Text("👉 "+item)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    Text("Instructions")
                        .modifier(RecipeSectionTitleModifier())
                    LazyVStack(alignment:.center,spacing:5)
                    {
                        ForEach(recipe.instructions,id:\.self)
                        {
                            item in
                            VStack(alignment:.center,spacing:8)
                            {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .imageScale(.large)
                                    .font(.title)
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                    .padding(.bottom,8)
                                Text(item)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                    .font(.system(.body,design:.serif))
                                    .padding(.bottom,30)
                                    .lineSpacing(8)
                            }
                        }
                    }
                    
                    
                }
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay{
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .shadow(radius: 6)
            }
            .frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.topTrailing)
            .padding(.trailing,20)
            .padding(.top,12)

        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[2])
    }
}
