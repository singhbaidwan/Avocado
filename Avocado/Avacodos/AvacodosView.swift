//
//  AvacodosView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct AvacodosView: View {
    @State var pulsateAnimation = false
    var body: some View {
        VStack{
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240,height: 240,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12,x: 0,y: 8)
                .scaleEffect(self.pulsateAnimation ? 1.1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses:true))
            VStack{
                Text("Avocado".uppercased())
                    .font(.system(size: 42,weight: .bold,design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 5,x:0,y:8)
                Text("Creamy ,green and full nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy this handpicked avocado recipe for breakfast, lunch , dinner & more!")
                    .font(.title3)
                    .fontDesign(.serif)
                    .lineLimit(nil)
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    .frame(maxWidth: 640,minHeight: 120)
                
            }
            .padding()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            self.pulsateAnimation.toggle()
        }
    }
}

struct AvacodosView_Previews: PreviewProvider {
    static var previews: some View {
        AvacodosView()
//            .environment(\.colorScheme, .dark)
    }
}
