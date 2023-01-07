//
//  ContentView.swift
//  AsyncImage
//
//  Created by Rostislav Zapolsky on 07.01.23.
//

import SwiftUI

struct ContentView: View {
    private let imageUrl = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case let .success(image):
                image
                    .resizableToFit()
            case .failure(_):
                Image(systemName: "ant.circle.fill")
                    .resizableAsSmall()
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .resizableAsSmall()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Image {
    func resizableToFit() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func resizableAsSmall() -> some View {
        self
            .resizableToFit()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
