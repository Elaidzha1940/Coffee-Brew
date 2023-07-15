//  /*
//
//  Project: Coffee Brew
//  File: ColorAsset.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.07.2023
//
//  Status: #In progress | #Decorated
//
//  */

protocol AssetColor: RawRepresentable {}

extension AssetColor {
    internal var colorName: String {
        let type = String(describing: Self.self)
        var temp: String = ""
        for item in self.str {
            let current = String(item)
            let bool = item.uppercased() == current
            temp += bool ? "-\(current.lowercased())" : current.lowercased()
        }
        return type.lowercased() + "-" + temp
    }
    private var str: String {
        self.rawValue as! String
    }
}
