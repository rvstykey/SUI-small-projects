//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    
    var title: String
    var message: String
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something is wrong with the camera. We are unable to capture the input.",
        dismissButton: .default(Text("OK")))
    
    static let invalidScannedInput = AlertItem(
        title: "Invalid Scan Type",
        message: "The value scanned is not valid.",
        dismissButton: .default(Text("OK")))
}

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Image", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) {
                Alert(title: Text($0.title), message: Text($0.message), dismissButton: $0.dismissButton)
            }
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
