//
//  FlightRecord.swift
//  Flytebook
//
//  Created by Richie Flores on 12/15/23.
//

import Foundation

struct FlightRecord {
    var id: UUID
    
    // Flight Information
    var dateOfFlight: Date
    var totalDuration: Double
    
    // Aircraft Information
    var aircraftMake: String
    var aircraftModel: String
    var aircraftID: String
    
    // Flight Route
    var airportDeparture: String
    var airportArrival: String
    
    // Aircraft Category
    var airplaneSEL: Double?
    var airplaneMEL: Double?
    var groundTrainer: Double?
    
    // Piloting Time
    var dualReceived: Double?
    var pilotInCommand: Double?
    
    // Flight Conditions
    var flightConditionDay: Double?
    var flightConditionNight: Double?
    var flightConditionCrossCountry: Double?
    var flightConditionActualInstrument: Double?
    var flightConditionSimulatedInstrument: Double?
    
    // Landings
    var landingsDay: Int?
    var landingsNight: Int?
    
    // Misc.
    var instrumentApproaches: Int?
    var additionalRemarks: String
}
