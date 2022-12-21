//
//  SettingsView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct SettingsView: View {
    private var idiom:UIUserInterfaceIdiom{UIDevice.current.userInterfaceIdiom}
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center,spacing:0) {
            VStack(alignment: .center
                   , spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: idiom == .pad ? 180:100 ,height: idiom == .pad ? 180 : 100 ,alignment: .center)
                    .shadow(radius: 8)
                Text("Avocado".uppercased())
                    .modifier(RecipeSectionTitleModifier())
            }
                   .padding()
            Form{
                Section {
                    Toggle(isOn: self.$enableNotification) {
                        Text("Enable Notification")
                    }
                    Toggle(isOn: self.$backgroundRefresh) {
                        Text("Background Refresh")
                    }
                } header: {
                    Text("General Settings")
                }
                
                Section {
                    if enableNotification{
                        cellItem(text1: "Product", text2: "Avocado Recipes")
                        cellItem(text1: "Compatibility", text2: "iPhone & iPad")
                        cellItem(text1: "Developer", text2: "Dalveer Singh")
                        cellItem(text1: "Designer", text2: "Robert Petras")
                        cellItem(text1: "LinkedIn", text2: "/in/singbaidwan")
                        cellItem(text1: "Version", text2: "1.0.0")
                        cellItem(text1: "Message", text2: "Happy Coding")
                        
                    }
                }
            header:{
                Text("Application")
            }
                
            }
        }
    }
    @ViewBuilder
    func cellItem(text1:String,text2:String) -> some View
    {
        HStack{
            Text(text1).foregroundColor(.gray)
            Spacer()
            Text(text2)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
