//
//  LoadingView.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 18.01.23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            ProgressView()
                .tint(.brandPrimary)
                .scaleEffect(2)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
