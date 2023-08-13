//
//  FrameworkDetailView.swift
//  AppFramework
//
//  Created by Hoon Wee on 2023/08/07.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                viewModel.isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView,
               content: {
                 SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
               })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
