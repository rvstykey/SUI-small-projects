//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    @ObservedObject var viewModel: FrameworkDetailsViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString)!) {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(viewModel: FrameworkDetailsViewModel(framework: MockData.sampleFramework))
            .preferredColorScheme(.dark)
    }
}
