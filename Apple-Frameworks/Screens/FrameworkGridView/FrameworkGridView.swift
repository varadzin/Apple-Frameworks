//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Frantisek Varadzin on 14/05/2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                      ForEach(MockData.frameworks) {framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                         
                    }
                }
            }.navigationTitle("Apple Frameworks")
          
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}



