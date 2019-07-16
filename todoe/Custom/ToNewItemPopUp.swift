//
//  NewItemPopUp.swift
//  todoe
//
//  Created by yash Shelatkar on 16/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class TONewItemPopup:TOGradient {
    
    let cancel = TOButton(title: "  cancel  ", type: .roundedText, radius: 4)
    let add = TOButton(title: "  add  ", type: .roundedText, radius: 4)
    let textField = ToTextField(placeHolder: "go buy Ikea frames", inset: 6)
    var delegate:TONewItemDelegate?
    
    @objc func handleCancel() {
        animatePopup()
    }
    
    var popupLocation:CGFloat = 70
    
    @objc func animatePopup() {
        textField.resignFirstResponder()
        self.animateView(transform: CGAffineTransform(translationX: 0, y: popupLocation), duration: 0.3)
        if popupLocation == 70 {
            popupLocation = 0
            
        } else {
            popupLocation = 70
        }
    }
    
    @objc func handleAdd() {
        print("Problem")
        if let delegate = self.delegate, let textFieldText = self.textField.text {
            delegate.addItemToList(text: textFieldText)
        }
        print("Done")
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animatePopup)))
        
        let inset:CGFloat = 12
        
        self.layer.cornerRadius = 16
        
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        textField.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        cancel.addTarget(self, action: #selector(self.handleCancel), for: .touchUpInside)
        add.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
