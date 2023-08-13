//
//  FrameworkDetailViewModel.swift
//  AppFramework
//
//  Created by Hoon Wee on 2023/08/13.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
