//  /*
//
//  Project: Coffee Brew
//  File: Tabbar.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.07.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct Tabbar: View {
    
    var body: some View {
        
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            Cart()
                .tabItem {
                    Image(systemName: "basket.fill")
                }
            Navigate()
                .tabItem {
                    Image(systemName: "heart")
                }
            Navigate()
                .tabItem {
                    Image(systemName: "bell.fill")
                }
        }
        .foregroundColor(.white)
        .accentColor(Color(toElement: .mainbright))
        .preferredColorScheme(.dark)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}

