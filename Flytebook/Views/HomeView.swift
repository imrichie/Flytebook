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
                .font(.largeTitle)
                .fontWeight(.light)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("Flightlog Entry pressed...")
                            showingSheet.toggle()
                        })  {
                            Image(systemName: "plus")
                        }
                        .navigationDestination(isPresented: $showingSheet) {
                            LogbookEntryView()
                        }
                    }
                }
                .navigationTitle("Flytebook")
        }
    }
}

#Preview {
    HomeView()
}
