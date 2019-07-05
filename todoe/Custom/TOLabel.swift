//
//  TOLabel.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class TOLabel: UILabel {
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title:String = "Default",color:UIColor = .white,size:CGFloat = 16, frame:CGRect = .zero, textAllign:NSTextAlignment = .left){
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.systemFont(ofSize: size)
        self.textAlignment = textAllign
    }
    
}
