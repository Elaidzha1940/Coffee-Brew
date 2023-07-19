//  /*
//
//  Project: Coffee Brew
//  File: Cart.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  */

import SwiftUI

struct Cart: View {
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .main)
                
                VStack {
                    Text("Cart")
                        .font(.custom(Fonts.BonaNova.italic, size: 30))
                        .foregroundColor(.white)
                    
                    VStack {
                        
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}
