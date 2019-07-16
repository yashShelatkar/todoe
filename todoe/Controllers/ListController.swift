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
    let popUp = NewItemPopUp()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant:  120).isActive = true
        
        view.addSubview(popUp)
        popUp.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popUp.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        popUp.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        popUp.heightAnchor.constraint(equalToConstant:  80).isActive = true
        
        header.delegate = self
        
    }
    

 

}
