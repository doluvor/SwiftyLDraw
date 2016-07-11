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
        
        self.directiveType = .unknown
        self.fields = [String]()
    }
    
    public init(lines: [String]) {
        
        self.directiveType = .unknown
        self.fields = [String]()
        
        if let firstLine = lines.first {
            self.directiveType = firstLine.directiveType
            self.fields = firstLine.fields
        }
    }
}
