//
//  String+LDrawParser.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import Foundation

public enum DirectiveType: String {
    case command = "0"
    case subfile = "1"
    case line    = "2"
    case triangle = "3"
    case quad = "4"
    case optionLine = "5"
    case unknown
}

extension String {
    
    public var directiveType: DirectiveType {

        if let type = self.fields.first {
            if let type = DirectiveType(rawValue: type) {
                return type
            }
        }
        
        return .unknown
    }
    
    public var fields: [String] {
        
        return self.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}
