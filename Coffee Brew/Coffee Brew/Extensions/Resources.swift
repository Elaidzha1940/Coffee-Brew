//  /*
//
//  Project: Coffee Brew
//  File: Resources.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  S
//
//  */

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
