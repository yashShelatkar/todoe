//
//  NewItemPopUp.swift
//  todoe
//
//  Created by yash Shelatkar on 16/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class NewItemPopUp:TOGradient {
    
    let cancel = TOButton(title: "  cancel  ", type: .roundedText, radius: 4)
    let add = TOButton(title: "  add  ", type: .roundedText, radius: 4)
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let insert:CGFloat = 16
        
        
        self.layer.cornerRadius = 14
        
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor,constant: insert).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant:  insert).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor,constant: insert - 32).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant:  insert).isActive = true
        add.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
