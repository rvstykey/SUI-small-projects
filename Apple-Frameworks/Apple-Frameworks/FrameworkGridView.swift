//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
