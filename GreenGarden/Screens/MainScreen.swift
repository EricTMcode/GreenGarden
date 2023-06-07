//
//  MainScreen.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            VegetableListScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Second Page")
                .tabItem {
                    Label("My Garden", systemImage: "leaf")
                }
        }
        .tint(.teal)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
