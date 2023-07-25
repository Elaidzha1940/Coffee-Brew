//  /*
//
//  Project: Coffee Brew
//  File: Resources.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  Status: #In progress | #Decorated
//
//  */

import Foundation

enum Resources {}

extension Resources {
    
    enum System: String, AssetConvertable {
        case bigcoffee, heart, star, macha, blueberry, cocoa, plus, mines, next, man, search, house, basket, heartt, bell, qrcode, caramel
        
    }
    
    enum Icon: String, AssetConvertable {
        case main
    }
    
    enum Categories: String, AssetConvertable {
        case main
    }
}
