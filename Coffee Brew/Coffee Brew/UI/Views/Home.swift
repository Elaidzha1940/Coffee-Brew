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
                            HStack {
                                Image("system-search")
                                    .padding(.trailing, 8)
                                TextField("Browse your favorite coffee...", text: $search)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        .foregroundColor(Color(toText: .searchtx))
                        .background(Color(toElement: .searchrect))
                        .cornerRadius(12)
                        .padding(.horizontal, 5)
                        
                        //
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
        .ignoresSafeArea()
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
