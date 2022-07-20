//
//  DetailView.swift
//  AppleFrameworksHelper
//
//  Created by Ömer Faruk Kılıçaslan on 20.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            
            
            Spacer()
            
            FrameworkTitleView(framework: framework )
                .padding(.bottom, 50)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                    
            }
            .sheet(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }

            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

