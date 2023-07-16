//  /*
//
//  Project: Coffee Brew
//  File: SoyMilkCm.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.07.2023
//
//  */

import SwiftUI

struct SoyMilkCm: View {
    var body: some View {

        VStack {
            Text("Soy Milk")
                .frame(width: 100, height: 40)
                .foregroundColor(Color(toText: .main))
                .background(Color(toElement: .mainbright))
        }
        .cornerRadius(10)
    }
}

struct SoyMilkCm_Previews: PreviewProvider {
    static var previews: some View {
        SoyMilkCm()
    }
}
