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
    
    
    static let invalidForm = AlertItem(
        title: Text("Invalid form"),
        message: Text("Please ensure all fields in the form have been filled out."),
        dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid email"),
        message: Text("Please ensure your email is correct."),
        dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved."),
        dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or rertrieving your profile."),
        dismissButton: .default(Text("OK")))
}
