//
//  ScannerView.swift
//  Barcode-Scanner
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}

extension ScannerView {
    class Coordinator: NSObject, ScannerViewControllerDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
    }
}
