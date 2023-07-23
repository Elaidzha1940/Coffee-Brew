//
//  MatchedG.swift
//  Coffee Brew
//
//  Created by Elaidzha Shchukin on 24.07.2023.
//

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
    
    let categories: [String] = ["Americano", "Cappuccino", "Espresso"]
    @State private var selected: String = ""
    @Namespace private var namespacee
    
    var body: some View {
        
        HStack {
            ForEach(categories, id: \.self) { category in
                
                ZStack(alignment: .bottom) {
                    if selected == category {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "category_background", in: namespacee)
                            .frame(width: 70, height: 2)
                            .offset(y: 10)
                    }
                    Text(category)
                        .bold()
                        .foregroundColor(selected == category ? .white : .black)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = category
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.4))
    }
}
