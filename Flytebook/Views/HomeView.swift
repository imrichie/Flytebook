//
//  HomeView.swift
//  Flytebook
//
//  Created by Richie Flores on 12/14/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showingSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Hello, World")
                .navigationTitle(Text("Flytebook"))
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("New Flight Pressed")
                            showingSheet.toggle()
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showingSheet, content: {
                    LogbookEntryView()
                })
        }
    }
}

#Preview {
    HomeView()
}
