//  /*
//
//  Project: Coffee Brew
//  File: SmallCarts.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.07.2023
//
//  */

import SwiftUI

struct SmallCarts: View {
    var body: some View {

        VStack(alignment: .leading) {

            Image("system-cocoa")
                .resizable()
                .frame(width: 130, height: 130)
                .cornerRadius(10)
            
            Text("Cinnamon & Cocoa")
                .font(.custom(Fonts.BonaNova.regular, size: 18))
                .foregroundColor(.white)
            
            HStack {
              
                HStack(spacing: 3) {
                    Image(systemName: "eurosign")
                        .foregroundColor(.white)
                    Text("99")
                        .font(.custom(Fonts.BonaNova.bold, size: 18))
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 45)
               
                Button(action: {}) {
                    Image("system-plus")
                        .frame(width: 40, height: 40)
                        .background(Color(toElement: .mainbright))
                        .cornerRadius(10)
                }
            }
            .background(Color(toElement: .backgrey))
            .cornerRadius(10)
        }
        .frame(width: 130)
        .padding()
        .background(Color(toElement: .cartrect))
        .cornerRadius(20)
    }
}

struct SmallCarts_Previews: PreviewProvider {
    static var previews: some View {
        SmallCarts()
    }
}
