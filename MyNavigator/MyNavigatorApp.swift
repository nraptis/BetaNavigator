//
//  MyNavigatorApp.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import SwiftUI

@main
struct MyNavigatorApp: App {
    
    @State var rootViewModel: RootViewModel
    @State var router: Router
    
    init() {
        let rootViewModel = RootViewModel()
        let router = Router(rootViewModel: rootViewModel)
        self._rootViewModel = State(wrappedValue: rootViewModel)
        self._router = State(wrappedValue: router)
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(rootViewModel)
                .environment(router)
                .preferredColorScheme(.dark)
        }
    }
}
