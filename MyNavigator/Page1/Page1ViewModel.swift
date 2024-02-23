//
//  Page1ViewModel.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import Foundation
import Observation

@Observable class Page1ViewModel {
    
    static func mock() -> Page1ViewModel {
        Page1ViewModel(router: .mock())
    }
    
    let router: Router
    let page1Models: [Page1Model] = [.init(name: "Jenny", id: 0),
                                     .init(name: "Valery", id: 1),
                                     .init(name: "William", id: 2),
                                     .init(name: "Carlos", id: 3),
                                     .init(name: "Thomas", id: 4),
                                     .init(name: "Gunther", id: 5)]
    init(router: Router) {
        self.router = router
    }
    
    func selectModelIntent(page1Model: Page1Model) {
        router.pushPage2(page1ViewModel: self, page1Model: page1Model)
    }
}

extension Page1ViewModel: Hashable {
    static func == (lhs: Page1ViewModel, rhs: Page1ViewModel) -> Bool {
        ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}
