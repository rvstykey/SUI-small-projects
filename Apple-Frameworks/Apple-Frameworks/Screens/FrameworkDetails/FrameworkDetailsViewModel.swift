//
//  FrameworkDetailsViewModel.swift
//  Apple-Frameworks
//
//  Created by Rostislav Zapolsky on 21.01.23.
//

import SwiftUI

final class FrameworkDetailsViewModel: ObservableObject {
    let framework: Framework
    
    init(framework: Framework) {
        self.framework = framework
    }
}
