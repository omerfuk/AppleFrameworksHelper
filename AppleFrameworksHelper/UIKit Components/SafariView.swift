//
//  SafariView.swift
//  AppleFrameworksHelper
//
//  Created by Ömer Faruk Kılıçaslan on 20.07.2022.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
        
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
