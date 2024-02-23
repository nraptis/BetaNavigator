//
//  Page1View.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import SwiftUI

struct Page1View: View {
    @Environment(Page1ViewModel.self) var page1ViewModel: Page1ViewModel
    @Environment(Router.self) var router: Router
    var body: some View {
        List() {
            ForEach(page1ViewModel.page1Models)  { page1Model in
                Button(action: {
                    page1ViewModel.selectModelIntent(page1Model: page1Model)
                }, label: {
                    Text(page1Model.name)
                        .foregroundStyle(Color.white)
                        .font(.body.bold())
                })
            }
        }
        .navigationTitle("Page 1")
    }
}

#Preview {
    NavigationStack {
        Page1View()
            .environment(Page1ViewModel.mock())
            .environment(Router.mock())
            .preferredColorScheme(.dark)
    }
}
