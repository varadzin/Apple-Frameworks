//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct XDismissButton: View {
    
    
    @Binding var isShowingDetailView: Bool //aby som mohol urobit dismiss modal View
    
    var body: some View {
     
                HStack {
                    Spacer()
                    
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }.padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
