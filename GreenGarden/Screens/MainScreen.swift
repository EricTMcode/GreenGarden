//
//  MainScreen.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationStack {
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
            .navigationTitle("Green Garden")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
