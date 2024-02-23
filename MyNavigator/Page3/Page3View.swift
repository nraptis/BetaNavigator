//
//  Page3View.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import SwiftUI

struct Page3View: View {
    @Environment(Page3ViewModel.self) var page3ViewModel: Page3ViewModel
    @Environment(Router.self) var router: Router
    var body: some View {
        List() {
            HStack {
                Spacer()
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 180.0))
                    .foregroundStyle(.white)
                    .padding(.all, 32.0)
                Spacer()
            }
        }
        .navigationTitle("\(page3ViewModel.page1Model.name), \(page3ViewModel.page2Model.age)")
    }
}

#Preview {
    NavigationStack {
        Page3View()
            .environment(Page3ViewModel.mock())
            .environment(Router.mock())
            .preferredColorScheme(.dark)
    }
}
