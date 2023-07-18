//  /*
//
//  Project: Coffee Brew
//  File: Description.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  */

import SwiftUI

struct Description: View {
    
    let categories: [String] = ["Oat Milk", "Soy Milk", "Almond Milk"]
    @State private var selected: String = ""
    @Namespace private var namespacee
    
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .main)
                VStack {
                    Image("system-bigcoffee")
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Cappuccino")
                                .font(.custom(Fonts.Rosarivo.italic, size: 25))
                                .foregroundColor(.white)
                            
                            Spacer()
                            Image("system-heart")
                        }
                        .padding()
                        
                        HStack {
                            
                            Text("Drizzled with Caramel")
                                .font(.custom(Fonts.Rosarivo.italic, size: 18))
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            Image("system-star")
                            
                            Text("4-5")
                                .font(.custom(Fonts.Rosarivo.italic, size: 16))
                                .foregroundColor(.white)

                        }
                        
                        Text("A single espresso shot poured into hot foamy milk, with surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup")
                            .font(.custom(Fonts.Rosarivo.regular, size: 16))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text("...Read More")
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading) {
                            Text("Choice of milk")
                                .font(.custom(Fonts.Rosarivo.regular, size: 18))
                                .foregroundColor(.white)
                            
                            HStack {
                                ForEach(categories, id: \.self) { category in
                                    
                                    ZStack {
                                        if selected == category {
                                            RoundedRectangle(cornerRadius: 12)
                                                .fill(Color(toElement: .mainbright))
                                                .matchedGeometryEffect(id: "category_background", in: namespacee)
                                            
                                        }
                                        Text(category)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 45)
                                            .background(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke()
                                            )
                                            .bold()
                                            .foregroundColor(selected == category ? .brown : Color(toElement: .mainbright))
                                    }
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 45)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            selected = category
                                        }
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                        }
                        .padding()
                        
                        HStack(spacing: 50) {
                            VStack {
                                Text("Price")
                                    .foregroundColor(.white)
                                
                                Text("R 249")
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 20)
                            Button {
                                //action
                            } label: {
                                Text("Oat Milk")
                                    .frame(width: 250, height: 50)
                                    .foregroundColor(Color(toText: .main))
                                    .background(Color(toElement: .mainbright))
                            }
                            .cornerRadius(10)
                            .padding(.leading, 20)
                            
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}
