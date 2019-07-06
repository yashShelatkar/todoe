//
//  TOButton.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class TOButton: UIButton{
    
   
    
    var title: String!
    
   
    init(title:String = "button text", frame:CGRect = .zero, type:ButtonOptions = .roundedText){
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        switch type {
            case .roundedText:
                self.title = title
                self.phaseTwo()
            case .squareIcon:
                break;
            default: break;
            
        }
        
        
        
        self.title = title
        self.phaseTwo()
        
    }
    
    
    func phaseTwo(){
        
        self.setTitle(self.title, for: .normal)
        self.layer.cornerRadius = 20
        
        self.setTitleColor(.greyZero, for: .normal)
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.init(name: "Raleway-v4020-SemiBold", size:16)
            
        }
       // self.font = UIFont.init(name: "Raleway-v4020-SemiBold", size:size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
