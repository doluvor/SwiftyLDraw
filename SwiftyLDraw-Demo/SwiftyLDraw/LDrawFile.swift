//
//  LDrawFile.swift
//  LDrawImporter
//
//  Created by doluvor on 16/7/9.
//  Copyright © 2016年 doluvor. All rights reserved.
//

import Foundation

public class LDrawFile {

    var models : Array<LDrawModel>
    
    public init() {
        
        models = []
    }
    
    public convenience init(lines: [String]) {
        
        self.init()
        
        // TODO: Calculate submodel line range
        
        let model = LDrawModel(lines: lines)
        
        models.append(model)
    }
    
    public convenience init(filePath: String) {
        
        do {
            let fileContent = try String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
        
            let lines = fileContent.componentsSeparatedByString("\r\n")
            
            self.init(lines: lines)
            
        } catch let error as NSError {
            print(error)
            
            self.init()
        }
    }
}
