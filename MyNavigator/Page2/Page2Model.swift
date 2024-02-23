//
//  Page2Model.swift
//  MyNavigator
//
//  Created by Nicky Taylor on 2/23/24.
//

import Foundation

struct Page2Model {
    
    static func mock() -> Page2Model {
        Page2Model(age: 20, id: 0)
    }
    
    let age: Int
    let id: Int
}

extension Page2Model: Identifiable {
    
}
