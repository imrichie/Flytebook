//
//  FlightRecord.swift
//  Flytebook
//
//  Created by Richie Flores on 12/15/23.
//

import Foundation

struct FlightRecord {
    var id: UUID
    var flightInfo: FlightInfo
    var aircraftDetails: AircraftDetails
    var flightRoute: FlightRoute
    var aircraftCategory: AircraftCategory
    var pilotingTime: PilotingTime
    var flightConditions: FlightConditions
    var landings: Landings
    var instrumentApproaches: Int?
    var additionalRemarks: String
}

// Flight Information
struct FlightInfo {
    var dateOfFlight: Date
    var totalDuration: Double
}

// Aircraft Information
struct AircraftDetails {
    var aircraftMake: String
    var aircraftModel: String
    var aircraftIdentifier: String
}

// Flight Route
struct FlightRoute {
    var departure: String
    var arrival: String
}

// Aircraft Category
struct AircraftCategory {
    var airplaneSEL: Double?
    var airplaneMEL: Double?
    var groundTrainer: Double?
}

// Piloting Time
struct PilotingTime {
    var dualRecieved: Double?
    var pilotInCommand: Double?
}

// Flight Conditions
struct FlightConditions {
    var day: Double?
    var night: Double?
    var crossCountry: Double?
    var actualInstrument: Double?
    var simulatedInstrument: Double?
}

// Landings
struct Landings {
    var day: Int?
    var night: Int?
}
