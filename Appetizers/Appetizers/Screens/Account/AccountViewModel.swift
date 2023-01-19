//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 19.01.23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    @Published var alertItem: AlertItem?
    
    var isValid: Bool {
        guard [firstName, lastName, email].contains("") else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValid else { return }
        
        print("Save")
    }
}
