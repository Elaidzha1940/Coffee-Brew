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
    
    @State private var search: String = ""
    var body: some View {
        
        VStack {
            
            VStack {
                ZStack {
                    Color(toElement: .main)
                    
                    VStack(alignment: .leading) {
                        
                        HStack(alignment: .center) {
                            VStack(alignment: .leading, spacing: -10) {
                                Text("deja")
                                    .font(.custom(Fonts.BonaNova.italic, size: 40))
                                    .foregroundColor(Color(toText: .deja))
                                
                                Text("Brew")
                                    .font(.custom(Fonts.BonaNova.regular, size: 50))
                                    .foregroundColor(Color(toText: .brew))
                            }
                            Spacer()
                            Image("system-man")
                        }
                        .padding()
                        
                        //MARK: SearchBar
                        HStack {
                            TextField("", text: $search)
                                .foregroundColor(Color(toText: .searchtx))
                        }
                        .padding()
                        .background(Color(toElement: .searchel))
                        .cornerRadius(12)
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
