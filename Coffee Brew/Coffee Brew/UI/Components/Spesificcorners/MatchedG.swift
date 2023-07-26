//  /*
//
//  Project: Coffee Brew
//  File: MatchedG.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.07.2023
//
//  Status: #In progress | #Decorated
//
//   */

import SwiftUI

struct MatchedG: View {
    var body: some View {
        
        MatchedGeometryEffectexample()
        
    }
}

struct MatchedG_Previews: PreviewProvider {
    static var previews: some View {
        MatchedG()
    }
}

struct MatchedGeometryEffectexample: View {
    
    let categories: [String] = ["Cappuccino", "Latte", "Americano", "Espresso", "Flat White"]
    @State private var selected: String = ""
    @Namespace private var namespacee
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 50, height: 620, alignment: .leading)
                .foregroundColor(Color(toElement: .couponcode))
            VStack(spacing: 70) {
                
                ForEach(categories, id: \.self) { category in
                    ZStack(alignment: .bottom) {
                        if selected == category {
                            
                        }
                        Text(category)
                            .bold()
                            .foregroundColor(selected == category ? Color(toText: .brew) : Color(toText: .cart))
                    }
                    .rotationEffect(.degrees(-90))
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selected = category
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.leading)
            .padding(.horizontal, -20)
        }
        .cornerRadius(50, corners: .topRight)
    }
}


struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
