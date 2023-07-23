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
                    Image(systemName: "house")
                }
            Cart()
                .tabItem {
                    Image("system-basket")
                }
            Navigate()
                .tabItem {
                    Image(systemName: "heart")
                }
            Navigate()
                .tabItem {
                    Image("system-bell")
                }
        }
        .accentColor(.blue)
        .preferredColorScheme(.dark)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}

