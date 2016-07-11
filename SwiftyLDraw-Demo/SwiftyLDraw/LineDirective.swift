//
//  LineDirective.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import SceneKit

public class LineDirective: Directive {

    public var point1: SCNVector3?
    public var point2: SCNVector3?
    
    public override init(lines: [String]) {
        
        super.init(lines: lines)

        self.point1 = SCNVector3(elements: Array(fields[2...4]))
        self.point2 = SCNVector3(elements: Array(fields[5...7]))
    }
}
