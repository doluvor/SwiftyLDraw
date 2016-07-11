//
//  LDrawModel.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import Foundation

public class LDrawModel {

    var directives : Array<Directive>
    
    public init() {
        
        self.directives = []
    }
    
    public convenience init(lines: [String]) {
        
        self.init()
        
        // TODO: Calculate step line range
        
        for line in lines {
            
            var directive: Directive
            
            switch line.directiveType {
            case .command:
                directive = MetaCommandDirective(lines: [line])
            case .subfile:
                directive = SubfileDirective(lines: [line])
            case .line:
                directive = LineDirective(lines: [line])
            case .triangle:
                directive = TriangleDirective(lines: [line])
            case .quad:
                directive = QuadDirective(lines: [line])
            case .optionLine, .unknown:
                directive = Directive(lines: [line])
                continue
            }
            
            self.directives.append(directive)
        }
    }
}
