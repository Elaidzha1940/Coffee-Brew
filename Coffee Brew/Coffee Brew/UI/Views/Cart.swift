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
    
    @State private var nameList = [ "Macha()", "Bluberry", "Cocoa"]
    @State var showSheet: Bool = false
    
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .main)
                
                VStack {
                    Text("Cart")
                        .font(.custom(Fonts.BonaNova.italic, size: 30))
                        .foregroundColor(.white)
                    
                    VStack {
                        
                        //MARK: Carts
                        
                        Macha()
                        Blueberry()
                        Cocoa()
                        
                        
                        //MARK: LineShape
                        
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                            .frame(height: 1)
                            .foregroundColor(Color(toElement: .backgrey))
                            .padding(4)
                        
                        //MARK: CouponCode / Sheet
                        
                        HStack {
                            
                            Button {
                                showSheet.toggle()
                            } label: {
                                ZStack {
                                    
                                    Rectangle()
                                        .foregroundColor(Color(toElement: .couponcode))
                                        .frame(width: 410, height: 45)
                                        .cornerRadius(8)
                                    
                                    HStack(spacing: 20) {
                                        Text("Apply Coupon Code")
                                            .font(.custom(Fonts.BonaNova.regular, size: 23))
                                            .foregroundColor(Color(toText: .cart))
                                            .padding(.horizontal, 20)
                                            .offset(x: -25)
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(Color(toText: .cart))
                                            .padding(.horizontal, 20)
                                            .offset(x: 25)
                                    }
                                }
                            }
                            .sheet(isPresented: $showSheet, content: {
                                Image("system-qrcode")
                            })
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            
                            HStack {
                                Text("Delivery Charges")
                                    .font(.custom(Fonts.BonaNova.regular, size: 20))
                                    .foregroundColor(.white)
                                Spacer()
                                HStack(spacing: 3) {
                                    Image(systemName: "eurosign")
                                        .foregroundColor(.white)
                                    Text("46")
                                        .font(.custom(Fonts.BonaNova.bold, size: 17))
                                        .foregroundColor(.white)
                                }
                            }
                            
                            HStack {
                                Text("Taxes")
                                    .font(.custom(Fonts.BonaNova.regular, size: 20))
                                    .foregroundColor(.white)
                                Spacer()
                                HStack(spacing: 3) {
                                    Image(systemName: "eurosign")
                                        .foregroundColor(.white)
                                    Text("64.28")
                                        .font(.custom(Fonts.BonaNova.bold, size: 17))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding()
                        
                        //MARK: LineShape
                        
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                            .frame(height: 1)
                            .foregroundColor(Color(toElement: .backgrey))
                            .padding(4)
                        
                        HStack {
                            Text("Grand Total")
                                .font(.custom(Fonts.BonaNova.bold, size: 30))
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "eurosign")
                                .foregroundColor(.white)
                            Text("1000.28")
                                .font(.custom(Fonts.BonaNova.bold, size: 30))
                                .foregroundColor(.white)
                        }
                        .padding()
                        
                        Button {
                            //action
                        } label: {
                            Text("PAY NOW")
                                .frame(width: 410, height: 50)
                                .foregroundColor(Color(toText: .main))
                                .background(Color(toElement: .mainbright))
                                .cornerRadius(10)
                        }
                        
                        //MARK: Tabbar
                    }
                    .padding(.bottom, 20)
                }
                .padding(.bottom, 20)
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
