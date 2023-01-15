//
//  AccountView.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 15.01.23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            Text("AccountView")
                .navigationTitle("💁‍♂️ Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
