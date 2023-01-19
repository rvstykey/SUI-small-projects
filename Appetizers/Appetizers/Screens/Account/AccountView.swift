//
//  AccountView.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.birthday, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                } header: {
                    Text("Requests")
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("💁‍♂️ Account")
        }
        .alert(item: $viewModel.alertItem) {
            Alert(title: $0.title, message: $0.message, dismissButton: $0.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
