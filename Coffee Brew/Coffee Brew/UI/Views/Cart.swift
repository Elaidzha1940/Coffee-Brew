//  /*
//
//  Project: Coffee Brew
//  File: Cart.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  */

import SwiftUI

struct Cart: View {
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .main)
                
                VStack {
                    Text("Cart")
                        .font(.custom(Fonts.BonaNova.italic, size: 30))
                        .foregroundColor(.white)
                    
                    VStack {
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 410, height: 120)
                                .foregroundColor(Color(toElement: .cartrect))
                                .cornerRadius(12)
                            
                            HStack {
                                Image("system-macha")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Capuccino")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("Dalgona Macha")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("R 248")
                                        .font(.custom(Fonts.BonaNova.bold, size: 17))
                                        .foregroundColor(.white)
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
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 410, height: 120)
                                .foregroundColor(Color(toElement: .cartrect))
                                .cornerRadius(12)
                            
                            HStack {
                                Image("system-blueberry")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Capuccino")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("Bursting Bluberry")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("R 99")
                                        .font(.custom(Fonts.BonaNova.bold, size: 17))
                                        .foregroundColor(.white)
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
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 410, height: 120)
                                .foregroundColor(Color(toElement: .cartrect))
                                .cornerRadius(12)
                            
                            HStack {
                                Image("system-cocoa")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Capuccino")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("Cinnamon & Cocoa")
                                        .font(.custom(Fonts.BonaNova.regular, size: 17))
                                        .foregroundColor(.white)
                                    Text("R 299")
                                        .font(.custom(Fonts.BonaNova.bold, size: 17))
                                        .foregroundColor(.white)
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
                        
                         Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                            .frame(height: 1)
                            .foregroundColor(Color(toElement: .mainbright))
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}

//MARK: Line / Divider
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path ()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}
