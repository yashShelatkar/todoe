//
//  ToTextField.swift
//  todoe
//
//  Created by yash Shelatkar on 16/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class ToTextField: UITextField {
    
    var insets:UIEdgeInsets!
    
    init(frame:CGRect = .zero, placeHolder:String, radius:CGFloat = 4, inset:CGFloat = 0) {
        super.init(frame: frame)
        checkIfAutoLayout()
            
        self.placeholder = placeholder
        self.backgroundColor = .white
        self.layer.cornerRadius = radius
        self.textColor = .gray
        self.insets = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: 0)
        
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: self.insets)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: self.insets)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: self.insets)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
