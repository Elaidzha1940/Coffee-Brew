//  /*
//
//  Project: Coffee Brew
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                
                NavigationLink(destination: Description())
                {
                    Smallcart(image: Image("system-macha"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
