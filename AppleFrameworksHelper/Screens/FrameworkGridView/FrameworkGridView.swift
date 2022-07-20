//
//  FrameworkGridView.swift
//  AppleFrameworksHelper
//
//  Created by Ömer Faruk Kılıçaslan on 20.07.2022.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: DetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        
                        FrameworkTitleView(framework: framework)
                    }

                    
                        
                }
                
            }
            
            .navigationTitle("🍎 Frameworks")
            
        }
        .accentColor(Color.primary)
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

