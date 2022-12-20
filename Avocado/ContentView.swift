//
//  ContentView.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AvacodosView()
                .tabItem {
                    Label("Avacodos", image: "tabicon-branch")
                }
            RecipesView()
                .tabItem {
                    Label("Recipes",image: "tabicon-book")
                }
            RipeningView()
                .tabItem {
                    Label("Ripening",image: "tabicon-avocado")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", image: "tabicon-settings")
                }
            
        }
        .tint(Color("ColorGreenAdaptive"))
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.white.opacity(0.1))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
