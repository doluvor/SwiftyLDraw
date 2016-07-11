//
//  SCNVector+SwiftyLDraw.swift
//  SwiftyLDraw-Demo
//
//  Created by doluvor on 16/7/11.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import SceneKit

extension SCNVector3 {
    
    public init(elements: [String]) {
        
        self.x = 0
        self.y = 0
        self.z = 0
        
        if let x = Float(elements[0]), y = Float(elements[1]), z = Float(elements[2]) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    
    public init(elements: [Float]) {
        
        self.x = elements[0]
        self.y = elements[1]
        self.z = elements[2]
    }
}
