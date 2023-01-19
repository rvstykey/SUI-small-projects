//
//  MainButton.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 19.01.23.
//

import SwiftUI

struct MainButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "Title")
    }
}
