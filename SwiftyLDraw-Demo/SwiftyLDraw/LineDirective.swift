//
//  LineDirective.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import SceneKit

public class LineDirective: Directive {

    
}

extension LineDirective: LineParsable {
    
    public var point1: SCNVector3 {
        return SCNVector3()
    }
    
    public var point2: SCNVector3 {
        return SCNVector3()
    }
}