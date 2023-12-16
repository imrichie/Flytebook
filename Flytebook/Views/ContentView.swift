//
//  ContentView.swift
//  Flytebook
//
//  Created by Richie Flores on 12/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            LogbookView()
                .tabItem {
                    Image(systemName: "pencil.and.scribble")
                    Text("Logbook")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("Settings")
                }
        }        
    }
}

#Preview {
    ContentView()
}
