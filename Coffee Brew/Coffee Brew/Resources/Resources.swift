//
//  Resources.swift
//  Coffee Brew
//
//  Created by Elaidzha Shchukin on 15.07.2023.
//

import Foundation

enum Resources {}

extension Resources {
    
    enum System: String, AssetConvertable {
        case burger, calendar, logo, photo, search, scrap, right, star, point, starw, smallcalendar, micro, mountain
        
    }
    
    enum Icon: String, AssetConvertable {
        case cube, ellipce, polygon, whiteplus, iletter, iletterblue
    }
    
    enum Categories: String, AssetConvertable {
        case later
    }
}
