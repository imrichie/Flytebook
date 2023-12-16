//
//  LogbookEntryView.swift
//  Flytebook
//
//  Created by Richie Flores on 12/14/23.
//

import SwiftUI

struct LogbookEntryView: View {
    @State private var flightDate: Date = Date()
    @State private var aircraftType: String = ""
    @State private var pilotName: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    DatePicker("Date", selection: $flightDate)
                    TextField("Aircraft Type", text: $aircraftType)
                } header: {
                    Text("Flight Details")
                }
                
                Section {
                    TextField("Pilot Name", text: $pilotName)
                } header: {
                    Text("Pilot Details")
                }
            }
            .navigationTitle("Log New Flight")
        }
    }
}

#Preview {
    LogbookEntryView()
}
