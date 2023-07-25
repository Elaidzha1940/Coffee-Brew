//  /*
//
//  Project: Coffee Brew
//  File: Spesificstar.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.07.2023
//
//  */

import SwiftUI

struct Spesificstar: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(Color(toElement: .couponcode))
            
            HStack {
                Image("system-star")
                
                Text("4-5")
                    .font(.custom(Fonts.BonaNova.regular, size: 16))
                    .foregroundColor(.white)
            }
        }
    }
}

struct Spesificstar_Previews: PreviewProvider {
    static var previews: some View {
        Spesificstar()
    }
}
