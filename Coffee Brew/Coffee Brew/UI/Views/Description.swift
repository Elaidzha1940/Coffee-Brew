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
                                .foregroundColor(.white)
                            
                            Spacer()
                            Image("system-heart")
                        }
                        .padding()
                        
                        HStack {
                            
                            Text("Drizzled with Caramel")
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                            
                            Image("system-star")
                                .padding(.horizontal, 20)
                        }
                        
                        Text("A single espresso shot poured into hot foamy milk, with surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup")
                            .foregroundColor(.white)
                        Text("...Read More")
                            .foregroundColor(.white)
                        
                        HStack {
                            Text("Choice of milk")
                                .foregroundColor(.white)
                            
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
