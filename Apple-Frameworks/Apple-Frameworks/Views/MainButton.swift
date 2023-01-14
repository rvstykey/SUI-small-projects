//
//  MainButton.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import SwiftUI

struct MainButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "Learn More")
    }
}
