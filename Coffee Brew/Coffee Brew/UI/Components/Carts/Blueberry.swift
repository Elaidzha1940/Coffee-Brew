//
//  Blueberry.swift
//  Coffee Brew
//
//  Created by Elaidzha Shchukin on 23.07.2023.
//

import SwiftUI

struct Blueberry: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 410, height: 110)
                .foregroundColor(Color(toElement: .cartrect))
                .cornerRadius(12)
            
            HStack {
                Image("system-blueberry")
                    .resizable()
                    .frame(width: 90, height: 90)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Capuccino")
                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                        .foregroundColor(.white)
                    Text("Bursting Bluberry")
                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                        .foregroundColor(.white)
                    HStack(spacing: 3) {
                        Image(systemName: "eurosign")
                            .foregroundColor(.white)
                        Text("249")
                            .font(.custom(Fonts.BonaNova.bold, size: 17))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
                HStack {
                    Button(action: {}) {
                        Image("system-mines")
                    }
                    
                    Text("1")
                        .font(.custom(Fonts.BonaNova.regular, size: 25))
                        .foregroundColor(.white)
                        .padding(.horizontal, 3)
                    
                    Button(action: {}) {
                        Image("system-plus")
                    }
                }
                .background(Color(toElement: .backgrey))
            }
            .padding(.horizontal, 20)
        }
    }
}

struct Blueberry_Previews: PreviewProvider {
    static var previews: some View {
        Blueberry()
    }
}
