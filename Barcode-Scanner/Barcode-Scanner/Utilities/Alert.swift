//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: Text("Invalid Device Input"),
        message: Text("Something is wrong with the camera. We are unable to capture the input."),
        dismissButton: .default(Text("OK")))
    
    static let invalidScannedInput = AlertItem(
        title: Text("Invalid Scan Type"),
        message: Text("The value scanned is not valid."),
        dismissButton: .default(Text("OK")))
}
