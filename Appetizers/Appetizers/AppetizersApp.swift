//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
