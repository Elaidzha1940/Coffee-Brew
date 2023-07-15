//  /*
//
//  Project: Coffee Brew
//  File: AssetConvertable.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  Status: #In progress | #Decorated
//
//  */ 

import Foundation

public protocol AssetConvertable: RawRepresentable {
    static var assetDelimiter: String { get }
}

extension AssetConvertable {
    static public var assetDelimiter: String {
        "-"
    }
    public var assetName: String {
        let type = self.fromCamelCase(value: .init(describing: Self.self))
        let name = self.fromCamelCase(value: self.str)
        return type + Self.assetDelimiter + name
    }
    
    private var str: String {
        self.rawValue as! String
    }
    
    private func fromCamelCase(value: String) -> String {
        var temp: String = ""
        for item in value {
            let current = String(item)
            let bool = item.uppercased() == current && temp != ""
            temp += bool ? Self.assetDelimiter + current.lowercased() : current.lowercased()
        }
        return temp
    }
}


