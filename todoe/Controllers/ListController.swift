//
//  ListController.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class ListController: UIViewController,TOHeaderDelegate {
    
    
    func addItem() {
        print("Trying to add Item from header")
    }
    

    let header = TOHeaderView(title: "Stuff to get Done", subtitle: "4 left")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant:  120).isActive = true
        
        header.delegate = self
        
    }
    

 

}
