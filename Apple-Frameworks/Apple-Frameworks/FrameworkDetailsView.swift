//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.medium)
                        .frame(width: 44, height: 44)
                }
            }

            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
                
            } label: {
                MainButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
