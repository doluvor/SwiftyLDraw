//
//  QuadDirective.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import SceneKit

public class QuadDirective: Directive {

    public var point1: SCNVector3?
    public var point2: SCNVector3?
    public var point3: SCNVector3?
    public var point4: SCNVector3?

    public override init(lines: [String]) {

        super.init(lines: lines)
        
        point1 = SCNVector3(elements: Array(fields[2...4]))
        point2 = SCNVector3(elements: Array(fields[5...7]))
        point3 = SCNVector3(elements: Array(fields[8...10]))
        point4 = SCNVector3(elements: Array(fields[11...13]))
    }
}
