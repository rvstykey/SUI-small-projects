//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink {
                            FrameworkDetailsView(framework: framework)
                        } label: {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
