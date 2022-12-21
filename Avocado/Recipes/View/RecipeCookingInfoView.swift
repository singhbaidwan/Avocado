//
//  RecipeCookingInfoView.swift
//  Avocado
//
//  Created by Dalveer singh on 21/12/22.
//

import SwiftUI

struct RecipeCookingInfoView: View {
    var recipe:Recipe
    var body: some View {
        HStack(alignment: .center,spacing: 12) {
            HStack(alignment: .center, spacing: 6) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 6) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 6) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingInfoView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingInfoView(recipe:recipesData[2])
    }
}
