//
//  Router.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import Foundation
import Observation
import SwiftUI

@Observable class Router {
    
    static func mock() -> Router {
        Router(rootViewModel: .mock())
    }
    
    var navigationPath = NavigationPath()
    
    let rootViewModel: RootViewModel
    init(rootViewModel: RootViewModel) {
        self.rootViewModel = rootViewModel
    }
    
    // This is for the navigation root AKA landing page
    @ObservationIgnored lazy var page1ViewModel: Page1ViewModel = {
        Page1ViewModel(router: self)
    }()
    
    func pushPage2(page1ViewModel: Page1ViewModel, page1Model: Page1Model) {
        let page2ViewModel = Page2ViewModel(router: self, page1ViewModel: page1ViewModel, page1Model: page1Model)
        navigationPath.append(page2ViewModel)
    }
    
    func pushPage3(page2ViewModel: Page2ViewModel, page1Model: Page1Model, page2Model: Page2Model) {
        let page3ViewModel = Page3ViewModel(router: self,
                                            page2ViewModel: page2ViewModel,
                                            page1Model: page1Model,
                                            page2Model: page2Model)
        navigationPath.append(page3ViewModel)
    }
    
}
