//
//  Alert.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 17.01.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(
        title: Text("Server error"),
        message: Text("The data received from server was invalid. Please contact support."),
        dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(
        title: Text("Server error"),
        message: Text("Invalid response from server. Please try again later or contact support."),
        dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(
        title: Text("Server error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(
        title: Text("Server error"),
        message: Text("Unable to complete your request at this time. Please chack your internet connection"),
        dismissButton: .default(Text("OK")))
}
