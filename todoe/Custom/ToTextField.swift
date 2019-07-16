//
//  ToTextField.swift
//  todoe
//
//  Created by yash Shelatkar on 16/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class ToTextField: UITextField {
        init(frame:CGRect = .zero, placeHolder:String) {
        super.init(frame: frame)
        checkIfAutoLayout()
            
        self.placeholder = placeholder
            
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
