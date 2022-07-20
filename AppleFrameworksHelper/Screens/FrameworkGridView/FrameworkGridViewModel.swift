//
//  FrameworkGridViewModel.swift
//  AppleFrameworksHelper
//
//  Created by Ömer Faruk Kılıçaslan on 20.07.2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    
}
