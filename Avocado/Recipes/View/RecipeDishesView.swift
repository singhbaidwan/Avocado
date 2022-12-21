//
//  RecipeDishesView.swift
//  Avocado
//
//  Created by Dalveer singh on 21/12/22.
//

import SwiftUI

struct RecipeDishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading,spacing: 4) {
                cellViewFront(text: "Toasts", image: "icon-toasts")
                Divider()
                cellViewFront(text: "Tacos", image: "icon-tacos")
                Divider()
                cellViewFront(text: "Salads", image: "icon-salads")
                Divider()
                cellViewFront(text: "Spreads", image: "icon-halfavo")
            }
            VStack(alignment:.center,spacing: 16){
                HStack{
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .imageScale(.large)
                HStack{
                    Divider()
                }
            }
            VStack(alignment:.trailing,spacing: 4){
                cellViewBack(text: "Guacamole", image: "icon-guacamole")
                Divider()
                cellViewBack(text: "Sandwich", image: "icon-sandwiches")
                Divider()
                cellViewBack(text: "Soup", image: "icon-soup")
                Divider()
                cellViewBack(text: "Smoothie", image: "icon-smoothies")
            }
        }
        .font(.callout)
        .fontDesign(.serif)
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 280)
        
    }
    
    @ViewBuilder
    func cellViewFront(text:String,image:String)->some View{
        HStack{
            Image(image)
                .resizable()
                .modifier(RecipeIconModifier())
            Spacer()
            Text(text)
        }
    }
    @ViewBuilder
    func cellViewBack(text:String,image:String)->some View{
        HStack{
            Text(text)
            Spacer()
            Image(image)
                .resizable()
                .modifier(RecipeIconModifier())
        }
    }
}

struct RecipeDishesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDishesView()
    }
}


struct RecipeIconModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 42,height: 42,alignment: .center)
    }
}
