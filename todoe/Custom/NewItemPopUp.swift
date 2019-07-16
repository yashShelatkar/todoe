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
    let textField = ToTextField(placeHolder: " Buy IKEA Frames ")
    
    @objc func handelCancel(){
        print("try to handel cancel")
    }
    
    @objc func handelAdd(){
        print("try to handel add")
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let insert:CGFloat = 16
        
        
        self.layer.cornerRadius = 14
        self.textField.textColor = .white
        self.textField.backgroundColor = .yellow
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor,constant: insert).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant:  insert).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor,constant: insert - 32).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant:  insert).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
    
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor,constant: insert).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: insert * -1).isActive = true
        textField.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 24).isActive = true
    //  textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        
        cancel.addTarget(self, action: #selector(self.handelCancel), for: .touchUpInside)
        add.addTarget(self, action: #selector(self.handelAdd), for: .touchUpInside)
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
