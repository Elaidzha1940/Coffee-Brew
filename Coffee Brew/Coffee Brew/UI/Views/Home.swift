//  /*
//
//  Project: Coffee Brew
//  File: Home.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  */

import SwiftUI

struct Home: View {
    
    @State private var search: String = ""
    var body: some View {
        
        VStack {
            
            VStack {
                ZStack {
                    Color(toElement: .main)
                    
                    VStack(alignment: .leading) {
                        
                        HStack(alignment: .center) {
                            VStack(alignment: .leading, spacing: -10) {
                                Text("deja")
                                    .font(.custom(Fonts.BonaNova.italic, size: 40))
                                    .foregroundColor(Color(toText: .deja))
                                
                                Text("Brew")
                                    .font(.custom(Fonts.BonaNova.regular, size: 50))
                                    .foregroundColor(Color(toText: .brew))
                            }
                            Spacer()
                            Image("system-man")
                        }
                        .padding()
                        
                        //MARK: SearchBar
                        HStack {
                            HStack {
                                Image("system-search")
                                    .padding(.trailing, 8)
                                TextField("Browse your favorite coffee...", text: $search)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        .foregroundColor(Color(toText: .searchtx))
                        .background(Color(toElement: .searchrect))
                        .cornerRadius(12)
                        .padding(.horizontal, 5)
                        
                        //
                        ZStack {
                            Rectangle()
                                .frame(width: 50, height: 550, alignment: .leading)
                                .foregroundColor(Color(toElement: .couponcode))
                            
                            VStack(spacing: 70) {
                                Text("Cappuccino").rotationEffect(.degrees(-90))
                                    .font(.custom(Fonts.BonaNova.regular, size: 18))
                                    .foregroundColor(Color(toText: .searchtx))
                                Text("Latte").rotationEffect(.degrees(-90))
                                    .font(.custom(Fonts.BonaNova.regular, size: 18))
                                    .foregroundColor(Color(toText: .searchtx))
                                Text("Americano").rotationEffect(.degrees(-90))
                                    .font(.custom(Fonts.BonaNova.regular, size: 18))
                                    .foregroundColor(Color(toText: .searchtx))
                                Text("Espresso").rotationEffect(.degrees(-90))
                                    .font(.custom(Fonts.BonaNova.regular, size: 18))
                                    .foregroundColor(Color(toText: .searchtx))
                                Text("Flat  White").rotationEffect(.degrees(-90))
                                    .font(.custom(Fonts.BonaNova.regular, size: 18))
                                    .foregroundColor(Color(toText: .searchtx))
                            }
                        }
                        .cornerRadius(50, corners: .topRight)
                        .padding(.horizontal, -20)
                    }
                    .padding(.bottom, 30)
                }
                .padding(.bottom, 20)
            }
        }
        .preferredColorScheme(.dark)
        .ignoresSafeArea()
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
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
