//
//  RecipesView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct RecipesView: View {
    private var idiom:UIUserInterfaceIdiom{UIDevice.current.userInterfaceIdiom}
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false)
        {
            // Header View
            VStack(alignment: .center, spacing: 10) {
                TabView{
                    ForEach(recipesHeaders){item in
                        RecipesHeaderView(recipeHeader: item)
                    }
                }
                .frame(height:320)
                .tabViewStyle(.page)
                
            // Dishes
            
                Text("Avocado Dishes")
                    .modifier(RecipeSectionTitleModifier())
                RecipeDishesView()
                    .frame(maxWidth: 640)
                    .padding(.bottom,20)
                
            //FACTS
                
                Text("Avocado Facts")
                    .modifier(RecipeSectionTitleModifier())
                ScrollView(.horizontal,showsIndicators: false)
                {
                    LazyHStack{
                        ForEach(factsData){data in
                            RecipeFactView(fact: data)
                        }
                    }
                    
                }
                .padding(.bottom,20)
                
                Text("Avocado Recipes")
                    .modifier(RecipeSectionTitleModifier())
                
                LazyVStack(alignment: .center, spacing: 20) {
                    ForEach(recipesData){ item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                .padding(.vertical,20)
                
                VStack(alignment: .center,spacing: 0) {
                    Text("All Abount Avocados")
                        .modifier(RecipeSectionTitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.body)
                        .fontDesign(.serif)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(minHeight: 60)
                        .padding(.horizontal)
                        .padding(.bottom,20)
                }
                .frame(maxWidth: 640)
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct RecipeSectionTitleModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.bold)
            .fontDesign(.serif)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
