//  /*
//
//  Project: Coffee Brew
//  File: Home.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  */

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack {
            
            VStack {
                ZStack {
                    Color(toElement: .main)
                    
                    VStack {
                        Text("deja")
                            .font(.custom(Fonts.BonaNova.italic, size: 40))
                            .foregroundColor(Color(toText: .deja))

                        Text("Brew")
                            .font(.custom(Fonts.BonaNova.regular, size: 50))
                        .foregroundColor(Color(toText: .deja))

                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
