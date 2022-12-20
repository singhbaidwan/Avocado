//
//  RipeningCardView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct RipeningCardView: View {
    var ripening:Ripening
    private var upAnimation:Animation{
        .easeInOut(duration: 1.0)
    }
    @State private var slideInAnimation = false
    var body: some View {
        VStack{
            Image(ripening.image)
                .resizable()
                .frame(width: 100,height: 100)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width:110,height: 110,alignment: .center)
                )
                .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120,height: 120,alignment: .center)
                )
                .zIndex(1)
                .animation(upAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            VStack(alignment: .center,spacing: 10) {
                //Stage
                VStack{
                    Text(ripening.stage)
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.body)
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top,65)
                .frame(width: 180)
                
                Text(ripening.title)
                    .font(.title)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical,12)
                    .padding(.horizontal,0)
                    .frame(width: 220)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(colors: [.white,Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom))
                        .shadow(radius: 6,x: 0,y: 6)
                    )
                Spacer()
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.semibold)
                    .lineLimit(nil)
                Spacer()
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.callout)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .frame(width: 180)
                    .padding([.vertical,.horizontal])
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenDark")], startPoint: .top, endPoint: .bottom))
                        .shadow(radius: 6,x: 0,y: 6)
                    )
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.medium)
                    .lineLimit(3)
                    .frame(width: 200)
                
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 300,height: 485,alignment: .center)
            .background(LinearGradient(colors: [Color("ColorGreenLight"),Color("ColorGreenMedium")], startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.top)
        .onAppear{
            self.slideInAnimation = true
        }
        
        
    }
}

struct RipeningCardView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningCardView(ripening: ripeningData[0])
    }
}
