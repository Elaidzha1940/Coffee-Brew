//  /*
//
//  Project:  Coffee Brew
//  File: AlmondMilkCm.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.07.2023
//
//  */

import SwiftUI

struct AlmondMilkCm: View {
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

struct AlmondMilkCm_Previews: PreviewProvider {
    static var previews: some View {
        AlmondMilkCm()
    }
}
