//
//  LogbookEntryView.swift
//  Flytebook
//
//  Created by Richie Flores on 12/14/23.
//

import SwiftUI

struct LogbookEntryView: View {
    @State private var flightRecord: FlightRecord = FlightRecord(
        flightDate: Date(),
        flightDuration: "",
        aircraftType: "",
        aircraftRegistration: "",
        pilotInCommand: "",
        coPilotOrInstructor: "",
        departureAirport: "",
        arrivalAirport: "", 
        flightPurpose: "",
        remark: "")
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Form {
                // flight information
                Section {
                    DatePicker("Date", selection: $flightRecord.flightDate)
                    TextField("Flight Duration", text: $flightRecord.flightDuration)
                } header: {
                    Text("Flight Details")
                }
                
                // aircraft details
                Section {
                    TextField("Aircraft Type", text: $flightRecord.aircraftType)
                    TextField("Aircraft Registration", text: $flightRecord.aircraftRegistration)
                } header: {
                    Text("Pilot Details")
                }
                
                // route information
                Section {
                    TextField("Departure Aiport", text: $flightRecord.departureAirport)
                    TextField("Arrival Airport", text: $flightRecord.arrivalAirport)
                } header: {
                    Text("Route Information")
                }
                
                // additional information
                Section {
                    Picker("Flight Purpose", selection: $flightRecord.flightPurpose) {
                        Text("Training").tag("Training")
                        Text("Cross-Country").tag("Cross-Country")
                        Text("Leisure").tag("Leisure")
                    }
                    
                    TextEditor(text: $flightRecord.remark)
                        .frame(minHeight: 100)
                } header: {
                    Text("Additional Details")
                }
            }
            .navigationTitle("Log New Flight")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        print("Saving your flight record...")
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    LogbookEntryView()
}
