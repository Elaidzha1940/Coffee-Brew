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
    
    var body: some View {
        
        TabView {
            Home()
                .tabItem {
                    Image("system-house")
                }
            Cart()
                .tabItem {
                    Image("system-basket")
                }
            Description()
                .tabItem {
                    Image("system-heartt")
                }
            Navigate()
                .tabItem {
                    Image("system-bell")
                }
        }
        .background(Color.red)
        .preferredColorScheme(.dark)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}

