//  /*
//
//  Project: Coffee Brew
//  File: Tabbar.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.07.2023
//
//  */

import SwiftUI

struct Tabbar: View {
    
    enum Tab: String, CaseIterable {
        
        case house
        case basket
        case heart
        case bell
    }
                    
    var body: some View {
        
        Text("Tabbar")
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
