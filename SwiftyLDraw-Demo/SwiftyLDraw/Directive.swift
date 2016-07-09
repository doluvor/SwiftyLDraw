//
//  LDrawDirective.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import Foundation

public class Directive {

    public var directiveType: DirectiveType
    public var fields: [String]
    
    public init() {
        directiveType = .unknown
        fields = []
    }
    
    public convenience init(lines: [String]) {

        self.init()
        
        if let firstLine = lines.first {
            directiveType = firstLine.directiveType
            fields = firstLine.fields
        }
    }
}
