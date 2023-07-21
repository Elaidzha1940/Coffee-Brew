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
                
                
            }
            .frame(width: nil, height: 60)
            .background(Color(toElement: <#T##Color.Element#>))
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
