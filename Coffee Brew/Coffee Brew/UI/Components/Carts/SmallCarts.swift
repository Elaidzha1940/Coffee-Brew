//  /*
//
//  Project: Coffee Brew
//  File: SmallCarts.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.07.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct SmallCarts: View {
    var body: some View {

        Smallcart(image: Image("system-cocoa"))
        Button {
            showSheet1.toggle()
        } label: {
            Smallcart(image: Image("system-macha"))
        }
    }
}

struct SmallCarts_Previews: PreviewProvider {
    static var previews: some View {
        SmallCarts()
    }
}

struct Smallcart: View {
    
    let image: Image
    
    var body: some View {
        
        VStack(alignment: .leading) {

           ZStack {
               image
               //Image("system-cocoa")
                   .resizable()
                   .frame(width: 130, height: 130)
                   .cornerRadius(10)
               
               Spesificstar()
                   .offset(x: -40, y: -52)
           }
           
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
