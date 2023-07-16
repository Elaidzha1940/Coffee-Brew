//  /*
//
//  Project: Coffee Brew
//  File: OatMilkCm.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.07.2023
//
//  */

import SwiftUI

struct OatMilkCm: View {
    var body: some View {

        VStack {
            Text("Oat Milk")
                .frame(width: 130, height: 40)
                .foregroundColor(Color(toText: .main))
                .background(Color(toElement: .mainbright))
        }
        .cornerRadius(10)
    }
}

struct OatMilkCm_Previews: PreviewProvider {
    static var previews: some View {
        OatMilkCm()
    }
}
