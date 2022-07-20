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
            
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                DetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

