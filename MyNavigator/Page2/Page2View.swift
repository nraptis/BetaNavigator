//
//  Page2View.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import SwiftUI

struct Page2View: View {
    
    @Environment(Page2ViewModel.self) var page2ViewModel: Page2ViewModel
    @Environment(Router.self) var router: Router
    
    var body: some View {
        List() {
            ForEach(page2ViewModel.page2Models) { page2Model in
                Button(action: {
                    page2ViewModel.selectModelIntent(page2Model: page2Model)
                }, label: {
                    Text(String(page2Model.age))
                        .foregroundStyle(Color.white)
                        .font(.body.bold())
                })
            }
        }
        .navigationTitle(page2ViewModel.page1Model.name)
    }
}

#Preview {
    NavigationStack {
        Page2View()
            .environment(Page2ViewModel.mock())
            .environment(Router.mock())
            .preferredColorScheme(.dark)
    }
}
