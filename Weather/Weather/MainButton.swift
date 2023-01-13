//
//  MainButton.swift
//  Weather
//
//  Created by Rostislav Zapolsky on 13.01.23.
//

import SwiftUI

struct MainButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "Test", textColor: .white, backgroundColor: .blue)
    }
}
