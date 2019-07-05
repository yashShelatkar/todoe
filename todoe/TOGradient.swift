//
//  TOGradient.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class TOGradient:UIView {
    
    
    var colors:[CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    
    
    var hexColors:[CGColor] = [
        UIColor.init(rgb:0x3A7BD5).cgColor,
        UIColor.init(rgb:0x64E4FF).cgColor
    ]
 
    // Color COdes HEX
    // 3A7BD5
    // 64E4FF
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
        
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

