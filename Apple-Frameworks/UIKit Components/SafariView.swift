//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
}
