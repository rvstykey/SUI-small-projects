//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 14.01.23.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
