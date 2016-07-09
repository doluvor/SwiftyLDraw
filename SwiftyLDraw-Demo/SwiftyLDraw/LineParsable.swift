//
//  LDrawParsable.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import SceneKit

protocol LineParsable {
    
    var point1: SCNVector3 { get }
    var point2: SCNVector3 { get }
}