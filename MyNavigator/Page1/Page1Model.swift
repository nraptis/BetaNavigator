//
//  Page1Model.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import Foundation

struct Page1Model {
    
    static func mock() -> Page1Model {
        Page1Model(name: "Jenny", id: 0)
    }
    
    let name: String
    let id: Int
}

extension Page1Model: Identifiable {
    
}
