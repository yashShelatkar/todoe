//
//  TOHeaderView.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class TOHeaderView: UIView {
   
    
    let bg = TOGradient()
    let titleLabel = TOLabel(size:14)
    let subTitleLabel = TOLabel(size:24)
    let addButton = TOButton(title: "+", type: .squareIcon)
    var delegate: TOHeaderDelegate?
    init(frame: CGRect = .zero, title:String = "header title", subtitle:String = "header subtitile") {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        self.titleLabel.text = title
        self.subTitleLabel.text = subtitle
        setupLayout()
        
    }
    
    
    func setupLayout(){
        addSubview(bg)
        bg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 12).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor,constant: 20 + 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        subTitleLabel.leftAnchor.constraint(equalTo: leftAnchor,constant: 20 + 8).isActive = true
        subTitleLabel.rightAnchor.constraint(equalTo: centerXAnchor,constant: 50).isActive = true
        
        addSubview(addButton)
        addButton.bottomAnchor.constraint(equalTo: subTitleLabel.bottomAnchor).isActive = true
        addButton.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        addButton.widthAnchor.constraint(equalTo: addButton.heightAnchor, multiplier: 1).isActive = true
        
        addButton.addTarget(delegate, action: #selector(self.handleAddButton), for: .touchUpInside)
    }
    
    @objc func handleAddButton() {
        if let delegate = self.delegate{
            delegate.addItem()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
