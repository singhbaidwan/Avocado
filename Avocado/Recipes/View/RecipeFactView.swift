//
//  RecipeFactView.swift
//  Avocado
//
//  Created by Dalveer singh on 21/12/22.
//

import SwiftUI

struct RecipeFactView: View {
    var fact:Fact
    var body: some View {
    HStack(spacing: 0){
        Image(fact.image)
            .resizable()
            .frame(width: 66,height: 66,alignment: .center)
            .clipShape(Circle())
            .background(
            
                Circle()
                    .fill(.white)
                    .frame(width: 74,height: 74,alignment: .center)
                
            )
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")], startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
            )
            .background(
            Circle()
                .fill(Color("ColorAppearanceAdaptive"))
                .frame(width: 90,height: 90,alignment: .center)
            
            )
            .offset(x:30)
            .zIndex(1)
            Text(fact.content)
                .padding(.leading,55)
                .padding(.trailing,10)
                .padding(.vertical,5)
                .frame(width: 300,height: 140,alignment: .center)
                .font(.body)
                .background(LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .lineSpacing(2)
                .foregroundColor(.white)
                .zIndex(0)
           
        }
    }
}

struct RecipeFactView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFactView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
