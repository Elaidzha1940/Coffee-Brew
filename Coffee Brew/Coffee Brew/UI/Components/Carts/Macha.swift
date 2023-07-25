//  /*
//
//  Project: Coffee Brew
//  File: Macha.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.07.2023
//
//  */

import SwiftUI

struct Macha: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 410, height: 110)
                .foregroundColor(Color(toElement: .cartrect))
                .cornerRadius(12)
            
            HStack {
                Image("system-macha")
                    .resizable()
                    .frame(width: 90, height: 90)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Capuccino")
                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                        .foregroundColor(.white)
                    Text("Dalgona Macha")
                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                        .foregroundColor(.white)
                    HStack(spacing: 3) {
                        Image(systemName: "eurosign")
                            .foregroundColor(.white)
                        Text("209")
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
                            .frame(width: 30, height: 30)
                            .background(Color(toElement: .mainbright))
                            .cornerRadius(10)
                    }
                }
                .background(Color(toElement: .backgrey))
            }
            .padding(.horizontal, 20)
            
//            .swipeActions {
//                Button(role: .destructive) {
//                    //ToDo Delete
//                } label: {
//                    Label("Delete", systemImage: "trash.fill")
//                }
//            }
        }
    }
}

struct Macha_Previews: PreviewProvider {
    static var previews: some View {
        Macha()
    }
}
