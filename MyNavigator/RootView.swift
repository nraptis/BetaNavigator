//
//  RootView.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import SwiftUI

struct RootView: View {
    
    @Environment(RootViewModel.self) var rootViewModel: RootViewModel
    @Environment(Router.self) var router: Router
    
    var body: some View {
        @Bindable var router = router
        return NavigationStack(path: $router.navigationPath) {
            Page1View()
                .environment(router.page1ViewModel)
                .navigationDestination(for: Page1ViewModel.self) { page1ViewModel in
                    Page1View()
                        .environment(page1ViewModel)
                }
                .navigationDestination(for: Page2ViewModel.self) { page2ViewModel in
                    Page2View()
                        .environment(page2ViewModel)
                }
                .navigationDestination(for: Page3ViewModel.self) { page3ViewModel in
                    Page3View()
                        .environment(page3ViewModel)
                }
        }
    }
}

#Preview {
    RootView()
        .environment(RootViewModel.mock())
        .environment(Router.mock())
        .preferredColorScheme(.dark)
}
