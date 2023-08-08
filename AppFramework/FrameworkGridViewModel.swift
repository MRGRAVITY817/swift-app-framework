//
//  FrameworkGridViewModel.swift
//  AppFramework
//
//  Created by Hoon Wee on 2023/08/07.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @Published var isShowingDetailView = false
}
