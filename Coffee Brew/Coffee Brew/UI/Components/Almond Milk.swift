//  /*
//
//  Project:  Coffee Brew
//  File: Almond Milk.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.07.2023
//
//  */

import SwiftUI

struct Almond_Milk: View {
    var body: some View {
        
        VStack {
            Text("Almond Milk")
                .frame(width: 150, height: 40)
                .foregroundColor(Color(toText: .main))
                .background(Color(toElement: .mainbright))
        }
        .cornerRadius(10)
    }
}

struct Almond_Milk_Previews: PreviewProvider {
    static var previews: some View {
        Almond_Milk()
    }
}
