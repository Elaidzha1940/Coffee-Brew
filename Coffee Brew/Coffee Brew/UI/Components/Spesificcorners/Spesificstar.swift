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
                .frame(width: 50, height: 28, alignment: .center)
                .foregroundColor(Color(toElement: .backgrey))
            
            HStack {
                Image("system-star")
                
                Text("4-5")
                    .font(.custom(Fonts.BonaNova.regular, size: 16))
                    .foregroundColor(.white)
            }
        }
        .cornerRadius(20, corners: .topLeft)
        .cornerRadius(20, corners: .bottomRight)
    }
}

struct Spesificstar_Previews: PreviewProvider {
    static var previews: some View {
        Spesificstar()
    }
}

struct RoundedCorner1: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius1(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
