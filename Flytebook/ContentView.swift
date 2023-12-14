//
//  ContentView.swift
//  Flytebook
//
//  Created by Richie Flores on 12/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World")
                .navigationTitle(Text("Flytebook"))
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("New Flight Pressed")
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
