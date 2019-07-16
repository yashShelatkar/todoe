//
//  NewItemPopUp.swift
//  todoe
//
//  Created by yash Shelatkar on 16/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class NewItemPopUp:TOGradient {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 14
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
