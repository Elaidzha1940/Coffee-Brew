//  /*
//
//  Project: Coffee Brew
//  File: Tabbar.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.07.2023
//
//  */

import SwiftUI

struct Tabbar: View {
    
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        
        VStack {
            HStack {
                
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image("system")
                }
            }
            .frame(width: nil, height: 60)
            .cornerRadius(10)
            //.background(Color(toElement: .tabbar))
        }
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar(selectedTab: .constant(.house))
    }
}

enum Tab: String, CaseIterable {
    
    case house
    case basket
    case heart
    case bell
}
